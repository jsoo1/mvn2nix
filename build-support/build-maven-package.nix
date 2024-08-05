{ lib
, stdenv
, jdk
, mvn2nix
, maven
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
, ...
}@args:

let
  repository = mvn2nix.mkMavenRepository dependencies;
in

stdenv.mkDerivation ({
  inherit name version src repository;

  passthru.dependencies = dependencies;

  nativeBuildInputs = [ jdk maven ] ++ (args.nativeBuildInputs or [ ]);

  buildPhase = ''
    echo "Using repository ${repository}"
    # 'maven.repo.local' must be writable so copy it out of nix store
    ${maven}/bin/mvn package --offline -Duser.home=`pwd` -Dmaven.repo.local=${repository}
  '';

  installPhase = ''
    mkdir -p $out/share/java

    cp target/${name}-${version}.jar $out/share/java
  '';

} // lib.removeAttrs args [ "dependencies" ])
