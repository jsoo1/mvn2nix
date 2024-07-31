{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_9_8
, org_apache_maven__maven-parent__pom__42
, org_apache__apache__pom__32
, org_codehaus_plexus__plexus-utils__3_5_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-settings:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-settings";
  version = "3.9.8";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings/3.9.8/maven-settings-3.9.8.jar";
        sha256 = "4087160614240b04cbb7e1d3af46ee27362e9d0d52e18356dd8bac7c183288ec";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings/3.9.8/maven-settings-3.9.8.pom";
        sha256 = "2e5dfe0c6d29ac76664107e3f5497c509ebf1772c702140edd1c43882a4fd0e0";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_9_8;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__42;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__32;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_5_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
