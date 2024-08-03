{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-settings-builder:pom:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven-settings-builder";
  version = "3.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings-builder/3.0/maven-settings-builder-3.0.pom";
      sha256 = "1e707086b2efabe7527e75539f87e5b4544ed20e8b5ae8aa35bcc24d7ba3a2b0";
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
