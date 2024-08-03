{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__2_2_1
}:
patchMavenJar {
  name = "org.apache.maven.reporting:maven-reporting:pom:2.2.1";
  groupId = "org.apache.maven.reporting";
  artifactId = "maven-reporting";
  version = "2.2.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting/2.2.1/maven-reporting-2.2.1.pom";
      sha256 = "e6ef1c7e8ff076a726c5e5895e360fb52ef6478d9d5412ef5bdff8aed1f55995";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__2_2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
