{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia__pom__1_0-alpha-9
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-sink-api:pom:1.0-alpha-9";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-sink-api";
  version = "1.0-alpha-9";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.0-alpha-9/doxia-sink-api-1.0-alpha-9.pom";
      sha256 = "eb9d0f060db1f03421dda050ba922b5f1f19653a334a68c50748e96c8f09a003";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia__pom__1_0-alpha-9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
