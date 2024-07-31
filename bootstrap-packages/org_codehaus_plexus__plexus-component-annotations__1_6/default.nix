{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-containers__pom__1_6
, org_codehaus_plexus__plexus__pom__3_3_2
, org_sonatype_forge__forge-parent__pom__10
, org_sonatype_spice__spice-parent__pom__17
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-annotations:1.6";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-annotations";
  version = "1.6";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/1.6/plexus-component-annotations-1.6.jar";
        sha256 = "2b3a6ca5f19a9ad490bc233f45e68d3093c8c01b4acc3c1d14bad4ca7c7ff438";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/1.6/plexus-component-annotations-1.6.pom";
        sha256 = "593a0ff086fb81700e17707c303f8552880bf2a50ce41d9dcb5918e8443710dd";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-containers__pom__1_6;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__3_3_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_forge__forge-parent__pom__10;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_spice__spice-parent__pom__17;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
