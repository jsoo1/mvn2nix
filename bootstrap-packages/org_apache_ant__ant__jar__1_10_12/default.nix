{
  lib
, pkgs
, patchMavenJar
, org_apache_ant__ant-launcher__jar__1_10_12
, org_apache_ant__ant__pom__1_10_12
}:
patchMavenJar {
  name = "org.apache.ant:ant:jar:1.10.12";
  groupId = "org.apache.ant";
  artifactId = "ant";
  version = "1.10.12";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/ant/ant/1.10.12/ant-1.10.12.jar";
      sha256 = "5c6a438c3ebe7a306eba452b09fa307b0e60314926177920bca896c4a504eaf6";
    };
  };
  dependencies = [
    {
      drv = org_apache_ant__ant-launcher__jar__1_10_12;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_ant__ant__pom__1_10_12;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
