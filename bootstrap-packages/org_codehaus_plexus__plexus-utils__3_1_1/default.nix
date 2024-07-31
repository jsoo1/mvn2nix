{
  lib
, pkgs
, patchMavenJar
, org_sonatype_forge__forge-parent__pom__10
, org_codehaus_plexus__plexus__pom__4_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:3.1.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.1.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.1.1/plexus-utils-3.1.1.jar";
        sha256 = "d1f74a7a0d91eb82536d71175b177bf21b1d7d286376b0ea5ba8a194265ba90b";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.1.1/plexus-utils-3.1.1.pom";
        sha256 = "6e9ef6a42b78c418176d07882762f53664bc39bac88135be8cb56337c050e6dd";
      };
    }
  ];
  dependencies = [
    {
      drv = org_sonatype_forge__forge-parent__pom__10;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__4_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
