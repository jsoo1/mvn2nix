{ lib
, stdenv
, jre
, maven
, makeWrapper
, nix-gitignore
, codegen
}:

codegen.overrideAttrs (o: {
  src = nix-gitignore.gitignoreSource [ ] ./.;

  patchClasspath = true;

  nativeBuildInputs = o.nativeBuildInputs ++ [ makeWrapper ];

  postInstall = ''
    # create a wrapper that will automatically set the classpath
    # this should be the paths from the dependency derivation
    makeWrapper ${jre}/bin/java $out/bin/${o.artifactId} \
          --add-flags "-Dmaven.home=\"\''${MAVEN_HOME:-\$M2_HOME}\" -jar $out/share/java/${o.artifactId}-${o.version}.jar" \
          --set-default M2_HOME ${maven} \
          --set-default JAVA_HOME ${
            if stdenv.hostPlatform.isDarwin
            then "${jre}/jre"
            else "${jre.jre}/lib/openjdk/jre"}
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
})
