{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__30
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:40";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "40";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/40/maven-parent-40.pom";
      sha256 = "17349590a6387e195dbb21c9556aa5721f37738d2b4b810a923bf1005be5290a";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__30;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
