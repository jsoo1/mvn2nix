{
  lib
, pkgs
, patchMavenJar
, org_sonatype_forge__forge-parent__pom__10
}:
patchMavenJar {
  name = "org.sonatype.sisu.inject:guice-parent:pom:3.1.0";
  groupId = "org.sonatype.sisu.inject";
  artifactId = "guice-parent";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guice-parent/3.1.0/guice-parent-3.1.0.pom";
      sha256 = "6c1be769d69337f1a8cc2d7e756f94b8bdc02a76c3087545aad1e374ac4bd0ce";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_forge__forge-parent__pom__10;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
