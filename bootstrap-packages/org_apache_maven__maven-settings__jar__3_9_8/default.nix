{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, org_apache_maven__maven-settings__pom__3_9_8
}:
patchMavenJar {
  name = "org.apache.maven:maven-settings:jar:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-settings";
  version = "3.9.8";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings/3.9.8/maven-settings-3.9.8.jar";
      sha256 = "4087160614240b04cbb7e1d3af46ee27362e9d0d52e18356dd8bac7c183288ec";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings__pom__3_9_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
