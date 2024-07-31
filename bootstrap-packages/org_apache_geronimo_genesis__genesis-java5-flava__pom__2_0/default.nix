{
  lib
, pkgs
, patchMavenJar
, org_apache_geronimo_genesis__genesis-default-flava__pom__2_0
, org_apache_geronimo_genesis__genesis__pom__2_0
, org_apache__apache__pom__6
}:
patchMavenJar {
  name = "org.apache.geronimo.genesis:genesis-java5-flava:pom:2.0";
  groupId = "org.apache.geronimo.genesis";
  artifactId = "genesis-java5-flava";
  version = "2.0";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/geronimo/genesis/genesis-java5-flava/2.0/genesis-java5-flava-2.0.pom";
        sha256 = "e7c5358bbbbc27daa5b327f63bc12650a75ddc9f9ac6d4bfa12789be1f2c29db";
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
