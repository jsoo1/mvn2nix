{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__1_5_8
, org_sonatype_plexus__plexus-build-api__pom__0_0_7
}:
patchMavenJar {
  name = "org.sonatype.plexus:plexus-build-api:jar:0.0.7";
  groupId = "org.sonatype.plexus";
  artifactId = "plexus-build-api";
  version = "0.0.7";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/plexus/plexus-build-api/0.0.7/plexus-build-api-0.0.7.jar";
      sha256 = "934171640fbd3d2495c50b79b0d9adb11e2c83e65bad157df8fe34bcac0ff798";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-build-api__pom__0_0_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
