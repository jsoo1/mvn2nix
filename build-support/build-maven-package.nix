{ lib
, stdenv
, jdk
, mvn2nix
, maven
, makeWrapper
}:

/*
  Build a jar with `mvn package` using a maven repository
  built from `dependencies`.
*/

{ src
, name
, version
, groupId
, artifactId
, classifier ? null
, dependencies
}@args:

let
  repository = mvn2nix.mkMavenRepository dependencies;
in

stdenv.mkDerivation ({
  inherit name version src repository;

  nativeBuildInputs = [ jdk maven makeWrapper ];

  buildPhase = ''
    echo "Using repository ${repository}"
    # 'maven.repo.local' must be writable so copy it out of nix store
    mvn package --offline -Duser.home=`pwd` -Dmaven.repo.local=${repository}
  '';

  installPhase = ''
    # create the bin directory
    mkdir -p $out/bin

    # create a symbolic link for the lib directory
    ln -s ${repository} $out/lib

    # copy out the JAR
    # Maven already setup the classpath to use m2 repository layout
    # with the prefix of lib/
    cp target/${name}-${version}.jar $out/

    # create a wrapper that will automatically set the classpath
    # this should be the paths from the dependency derivation
    makeWrapper ${jdk}/bin/java $out/bin/${name} \
          --add-flags "-jar $out/${name}-${version}.jar" \
          --set M2_HOME ${maven} \
          --set JAVA_HOME ${jdk}
  '';

} // args)
