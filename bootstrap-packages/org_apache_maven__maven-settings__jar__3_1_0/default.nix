{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_0_10
, org_apache_maven__maven-settings__pom__3_1_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-settings:jar:3.1.0";
  groupId = "org.apache.maven";
  artifactId = "maven-settings";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings/3.1.0/maven-settings-3.1.0.jar";
      sha256 = "a44bb2a6c8571269a06ab8efba046fd319af34c4985deda66512dc1e648f301a";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_10;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings__pom__3_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
