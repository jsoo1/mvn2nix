{
  lib
, pkgs
, patchMavenJar
, org_apache_geronimo_genesis__genesis-default-flava__pom__2_0
, org_apache_geronimo_genesis__genesis-java5-flava__pom__2_0
, org_apache_geronimo_genesis__genesis__pom__2_0
, org_apache__apache__pom__6
}:
patchMavenJar {
  name = "org.apache.xbean:xbean:pom:3.7";
  groupId = "org.apache.xbean";
  artifactId = "xbean";
  version = "3.7";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/xbean/xbean/3.7/xbean-3.7.pom";
        sha256 = "ea717132de8404b62fc9097a1f3215c705d525d457be9a5f12653adc68c33ab7";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_geronimo_genesis__genesis-default-flava__pom__2_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_geronimo_genesis__genesis-java5-flava__pom__2_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_geronimo_genesis__genesis__pom__2_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
