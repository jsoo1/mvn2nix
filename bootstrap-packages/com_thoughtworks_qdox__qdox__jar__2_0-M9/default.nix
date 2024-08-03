{
  lib
, pkgs
, patchMavenJar
, com_thoughtworks_qdox__qdox__pom__2_0-M9
}:
patchMavenJar {
  name = "com.thoughtworks.qdox:qdox:jar:2.0-M9";
  groupId = "com.thoughtworks.qdox";
  artifactId = "qdox";
  version = "2.0-M9";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/thoughtworks/qdox/qdox/2.0-M9/qdox-2.0-M9.jar";
      sha256 = "ee2f7fa60b6ef3151f1bb0a242e0bacb832ff29f3ee8fd3da61d26d8608bc1bc";
    };
  };
  dependencies = [
    {
      drv = com_thoughtworks_qdox__qdox__pom__2_0-M9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
