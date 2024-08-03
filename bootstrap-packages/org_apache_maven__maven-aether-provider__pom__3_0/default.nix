{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-aether-provider:pom:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven-aether-provider";
  version = "3.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-aether-provider/3.0/maven-aether-provider-3.0.pom";
      sha256 = "755c07a1ae47cff80f633265b224341d6d8cc26f02d37eb407bc45ff5db9a71d";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
