{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_4_1
, org_apache_ant__ant__jar__1_10_12
, org_apache_ant__ant-launcher__jar__1_10_12
, org_apache_maven_plugins__maven-antrun-plugin__pom__3_1_0
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-antrun-plugin:jar:3.1.0";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-antrun-plugin";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-antrun-plugin/3.1.0/maven-antrun-plugin-3.1.0.jar";
      sha256 = "8ae8f570b8f4ea46fa7f3df27f22ce4c6b6c1f387a6eaeefae6c896aebae1455";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_4_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_ant__ant__jar__1_10_12;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_ant__ant-launcher__jar__1_10_12;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-antrun-plugin__pom__3_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
