{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_1_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-artifact:pom:3.1.0";
  groupId = "org.apache.maven";
  artifactId = "maven-artifact";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-artifact/3.1.0/maven-artifact-3.1.0.pom";
      sha256 = "4f08433f11d9b646bf960b259d8f533f3dc93bfd3b17c4fadbd4068234277695";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
