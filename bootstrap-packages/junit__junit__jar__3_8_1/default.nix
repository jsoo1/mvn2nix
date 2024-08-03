{
  lib
, pkgs
, patchMavenJar
, junit__junit__pom__3_8_1
}:
patchMavenJar {
  name = "junit:junit:jar:3.8.1";
  groupId = "junit";
  artifactId = "junit";
  version = "3.8.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/junit/junit/3.8.1/junit-3.8.1.jar";
      sha256 = "b58e459509e190bed737f3592bc1950485322846cf10e78ded1d065153012d70";
    };
  };
  dependencies = [
    {
      drv = junit__junit__pom__3_8_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
