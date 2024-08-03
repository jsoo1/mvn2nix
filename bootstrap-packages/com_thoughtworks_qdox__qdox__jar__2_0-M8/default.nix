{
  lib
, pkgs
, patchMavenJar
, com_thoughtworks_qdox__qdox__pom__2_0-M8
}:
patchMavenJar {
  name = "com.thoughtworks.qdox:qdox:jar:2.0-M8";
  groupId = "com.thoughtworks.qdox";
  artifactId = "qdox";
  version = "2.0-M8";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/thoughtworks/qdox/qdox/2.0-M8/qdox-2.0-M8.jar";
      sha256 = "5de01a9b2c8c3600f8dd4524693ca511cc0973e5cd40116e0391fe8abc617b55";
    };
  };
  dependencies = [
    {
      drv = com_thoughtworks_qdox__qdox__pom__2_0-M8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
