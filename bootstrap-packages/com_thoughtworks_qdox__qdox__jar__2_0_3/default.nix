{
  lib
, pkgs
, patchMavenJar
, com_thoughtworks_qdox__qdox__pom__2_0_3
}:
patchMavenJar {
  name = "com.thoughtworks.qdox:qdox:jar:2.0.3";
  groupId = "com.thoughtworks.qdox";
  artifactId = "qdox";
  version = "2.0.3";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/thoughtworks/qdox/qdox/2.0.3/qdox-2.0.3.jar";
      sha256 = "ff70c10165714fe9546c418a65d74ecd5d57623ba408cecde9428f0a609b5d1c";
    };
  };
  dependencies = [
    {
      drv = com_thoughtworks_qdox__qdox__pom__2_0_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
