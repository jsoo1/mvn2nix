{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__2_0_4
, org_apache_maven__maven-settings__pom__3_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-settings:jar:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven-settings";
  version = "3.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings/3.0/maven-settings-3.0.jar";
      sha256 = "3b1a46b4bc26a0176acaf99312ff2f3a631faf3224b0996af546aa48bd73c647";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__2_0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings__pom__3_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
