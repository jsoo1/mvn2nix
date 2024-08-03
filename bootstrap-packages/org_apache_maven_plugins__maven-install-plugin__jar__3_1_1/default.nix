{
  lib
, pkgs
, patchMavenJar
, org_eclipse_aether__aether-util__jar__1_0_0_v20140518
, org_eclipse_aether__aether-api__jar__1_0_0_v20140518
, org_codehaus_plexus__plexus-utils__jar__3_5_0
, org_apache_maven_plugins__maven-install-plugin__pom__3_1_1
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-install-plugin:jar:3.1.1";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-install-plugin";
  version = "3.1.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-install-plugin/3.1.1/maven-install-plugin-3.1.1.jar";
      sha256 = "6bf2f4a06369f599818c5cee1d5ed957b7caf4aa0003b9867ad5525f8bca8086";
    };
  };
  dependencies = [
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
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-install-plugin__pom__3_1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
