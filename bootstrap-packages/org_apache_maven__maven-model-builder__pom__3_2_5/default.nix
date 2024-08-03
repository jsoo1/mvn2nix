{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven:maven-model-builder:pom:3.2.5";
  groupId = "org.apache.maven";
  artifactId = "maven-model-builder";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model-builder/3.2.5/maven-model-builder-3.2.5.pom";
      sha256 = "ebf1341d424e9faa3e8d02c5e91a30868be6583ecb753c72208634f5c05f0738";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
