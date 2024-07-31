{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__3_3_1
, org_sonatype_forge__forge-parent__pom__10
, org_sonatype_spice__spice-parent__pom__17
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:2.5.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "2.5.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/2.5.2/plexus-classworlds-2.5.2.jar";
        sha256 = "b2931d41740490a8d931cbe0cfe9ac20deb66cca606e679f52522f7f534c9fd7";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/2.5.2/plexus-classworlds-2.5.2.pom";
        sha256 = "89811897b815beefa094c39b4603e3f60c42276a2cd5d80b924ab19183629925";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__3_3_1;
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
