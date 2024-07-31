{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia__pom__1_0
, org_apache_maven__maven-parent__pom__10
, org_apache__apache__pom__4
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-sink-api:1.0";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-sink-api";
  version = "1.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.0/doxia-sink-api-1.0.jar";
        sha256 = "1cd68e9b4cf427a2b6b9a943a9bef6da879d25702334ea5addb0d153bb8f8911";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.0/doxia-sink-api-1.0.pom";
        sha256 = "50d699f86369802baf2cd16c31d936ad8f0c1a8976120cd1dc3dc70c8abed99a";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia__pom__1_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__10;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
