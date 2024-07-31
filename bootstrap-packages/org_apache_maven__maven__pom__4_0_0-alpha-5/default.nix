{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__29
, org_apache_maven__maven-parent__pom__39
}:
patchMavenJar {
  name = "org.apache.maven:maven:pom:4.0.0-alpha-5";
  groupId = "org.apache.maven";
  artifactId = "maven";
  version = "4.0.0-alpha-5";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven/4.0.0-alpha-5/maven-4.0.0-alpha-5.pom";
        sha256 = "037b44a6f27020511a5e62125c529707c857a2a10aedb5d8a219717c4b6a6955";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__29;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__39;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
