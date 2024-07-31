{ lib, stdenv, jdk, mvn2nix, maven, makeWrapper, nix-gitignore
, bootstrap ? false }:

assert bootstrap -> builtins.trace "mvn2nix does not use the `bootstrap` parameter anymore" true;

let
  repository = mvn2nix.mkMavenRepository mvn2nix.bootstrapPackages.com_fzakaria__mvn2nix__0_1.dependencies;
in stdenv.mkDerivation rec {
  pname = "mvn2nix";
  version = "0.1";
  name = "${pname}-${version}";
  src = nix-gitignore.gitignoreSource [] ./.;
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
    cp target/${name}.jar $out/

    # create a wrapper that will automatically set the classpath
    # this should be the paths from the dependency derivation
    makeWrapper ${jdk}/bin/java $out/bin/${pname} \
          --add-flags "-jar $out/${name}.jar" \
          --set M2_HOME ${maven} \
          --set JAVA_HOME ${jdk}
  '';

  meta = with lib; {
    description =
      "Easily package your Java applications for the Nix package manager.";
    homepage = "https://github.com/fzakaria/mvn2nix";
    license = licenses.mit;
    maintainers = [ "farid.m.zakaria@gmail.com" ];
    platforms = platforms.all;
    mainProgram = "mvn2nix";
  };
  passthru.repository = repository;
}
