{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_5_0
, org_eclipse_aether__aether-util__jar__1_0_0_v20140518
, org_eclipse_aether__aether-api__jar__1_0_0_v20140518
, org_apache_maven_plugins__maven-deploy-plugin__pom__3_1_1
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-deploy-plugin:jar:3.1.1";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-deploy-plugin";
  version = "3.1.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-deploy-plugin/3.1.1/maven-deploy-plugin-3.1.1.jar";
      sha256 = "c7c973af372dadb83c41e760a86af98b6291150ecdd235319c2a3635b85383ff";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-util__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-api__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-deploy-plugin__pom__3_1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
