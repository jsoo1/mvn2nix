{
  lib
, pkgs
, patchMavenJar
, org_apache_geronimo_genesis__genesis__pom__2_0
, org_apache__apache__pom__6
}:
patchMavenJar {
  name = "org.apache.geronimo.genesis:genesis-default-flava:pom:2.0";
  groupId = "org.apache.geronimo.genesis";
  artifactId = "genesis-default-flava";
  version = "2.0";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/geronimo/genesis/genesis-default-flava/2.0/genesis-default-flava-2.0.pom";
        sha256 = "08e6e146f4e245266dff9dd800b12875dd2367d3f67a34ab660a126c811215f8";
      };
    }
  ];
  dependencies = [
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
