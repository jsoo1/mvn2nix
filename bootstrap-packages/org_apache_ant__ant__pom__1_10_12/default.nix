{
  lib
, pkgs
, patchMavenJar
, org_apache_ant__ant-parent__pom__1_10_12
}:
patchMavenJar {
  name = "ant";
  coordinates = "org.apache.ant:ant:pom:1.10.12";
  groupId = "org.apache.ant";
  artifactId = "ant";
  version = "1.10.12";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/ant/ant/1.10.12/ant-1.10.12.pom";
      sha256 = "a774efed935890270accd460e5d465d2f45a019c78a0e78217c42bc9cf6f65d0";
    };
  };
  dependencies = [
    {
      drv = org_apache_ant__ant-parent__pom__1_10_12;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
