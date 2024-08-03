{
  lib
, pkgs
, patchMavenJar
, org_sonatype_spice__spice-parent__pom__15
}:
patchMavenJar {
  name = "org.sonatype.plexus:plexus-build-api:pom:0.0.7";
  groupId = "org.sonatype.plexus";
  artifactId = "plexus-build-api";
  version = "0.0.7";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/plexus/plexus-build-api/0.0.7/plexus-build-api-0.0.7.pom";
      sha256 = "e067317a47ed9e84b2ba85a76d3cf72980e2b0dc873a90b9cbfe74fe80c37c17";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_spice__spice-parent__pom__15;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
