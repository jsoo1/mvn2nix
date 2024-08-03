{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-plugin-api__pom__2_2_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-plugin-api:jar:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-plugin-api";
  version = "2.2.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-api/2.2.1/maven-plugin-api-2.2.1.jar";
      sha256 = "72a47a963563009c5e8b851491ced3f63e2d276b862bde1f9d10d53abac5b22f";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-plugin-api__pom__2_2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
