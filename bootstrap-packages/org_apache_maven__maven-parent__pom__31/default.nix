{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__19
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:31";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "31";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/31/maven-parent-31.pom";
        sha256 = "42fde763a6e6fe8480b1608adff2c35d02612e279ec9ce72fabb4fd8fb5c5753";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__19;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
