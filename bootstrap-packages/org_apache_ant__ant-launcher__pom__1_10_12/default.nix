{
  lib
, pkgs
, patchMavenJar
, org_apache_ant__ant-parent__pom__1_10_12
}:
patchMavenJar {
  name = "ant-launcher";
  coordinates = "org.apache.ant:ant-launcher:pom:1.10.12";
  groupId = "org.apache.ant";
  artifactId = "ant-launcher";
  version = "1.10.12";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/ant/ant-launcher/1.10.12/ant-launcher-1.10.12.pom";
      sha256 = "11b8712a4ce9a80912ae9505a46abc5b2d06cfd18892c9dd268eb3069056e4c9";
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
