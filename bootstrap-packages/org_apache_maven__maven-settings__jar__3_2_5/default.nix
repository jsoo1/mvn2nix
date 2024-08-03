{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_0_20
, org_apache_maven__maven-settings__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven:maven-settings:jar:3.2.5";
  groupId = "org.apache.maven";
  artifactId = "maven-settings";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings/3.2.5/maven-settings-3.2.5.jar";
      sha256 = "1874d4ee660b935675a60bdb2ef63e0ff5a81769f4fc04a035fa9d4c4e238224";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
