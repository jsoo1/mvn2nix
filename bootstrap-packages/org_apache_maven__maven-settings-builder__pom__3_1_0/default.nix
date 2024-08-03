{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_1_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-settings-builder:pom:3.1.0";
  groupId = "org.apache.maven";
  artifactId = "maven-settings-builder";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings-builder/3.1.0/maven-settings-builder-3.1.0.pom";
      sha256 = "fba7edbc9e339878641b34b8b57078bf779fc66009b37bb911f3aafbb2957af4";
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
