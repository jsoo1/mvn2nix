{
  lib
, pkgs
, patchMavenJar
, org_apache_ant__ant-launcher__pom__1_10_12
}:
patchMavenJar {
  name = "ant-launcher";
  coordinates = "org.apache.ant:ant-launcher:jar:1.10.12";
  groupId = "org.apache.ant";
  artifactId = "ant-launcher";
  version = "1.10.12";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/ant/ant-launcher/1.10.12/ant-launcher-1.10.12.jar";
      sha256 = "42a7ca7e7bb777fe7ee75a5ed4cc529c766bc43486367fdaad0ab4a32ee9c249";
    };
  };
  dependencies = [
    {
      drv = org_apache_ant__ant-launcher__pom__1_10_12;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
