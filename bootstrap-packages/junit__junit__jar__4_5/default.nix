{
  lib
, pkgs
, patchMavenJar
, junit__junit__pom__4_5
}:
patchMavenJar {
  name = "junit:junit:jar:4.5";
  groupId = "junit";
  artifactId = "junit";
  version = "4.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/junit/junit/4.5/junit-4.5.jar";
      sha256 = "923babc51db675f3923777c39ff7d868e7a76e69a45340ba4ecf38ce531adf0e";
    };
  };
  dependencies = [
    {
      drv = junit__junit__pom__4_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
