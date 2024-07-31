{
  lib
, pkgs
, patchMavenJar
, org_sonatype_forge__forge-parent__pom__5
, org_sonatype_spice__spice-parent__pom__15
, org_codehaus_plexus__plexus-utils__1_5_8
}:
patchMavenJar {
  name = "org.sonatype.plexus:plexus-build-api:0.0.7";
  groupId = "org.sonatype.plexus";
  artifactId = "plexus-build-api";
  version = "0.0.7";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/plexus/plexus-build-api/0.0.7/plexus-build-api-0.0.7.jar";
        sha256 = "934171640fbd3d2495c50b79b0d9adb11e2c83e65bad157df8fe34bcac0ff798";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/plexus/plexus-build-api/0.0.7/plexus-build-api-0.0.7.pom";
        sha256 = "e067317a47ed9e84b2ba85a76d3cf72980e2b0dc873a90b9cbfe74fe80c37c17";
      };
    }
  ];
  dependencies = [
    {
      drv = org_sonatype_forge__forge-parent__pom__5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_spice__spice-parent__pom__15;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__1_5_8;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
