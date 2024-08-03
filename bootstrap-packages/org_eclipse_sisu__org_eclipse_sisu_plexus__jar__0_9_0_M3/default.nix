{
  lib
, pkgs
, patchMavenJar
, org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_9_0_M3
, org_codehaus_plexus__plexus-component-annotations__jar__2_1_0
, org_codehaus_plexus__plexus-classworlds__jar__2_6_0
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, org_codehaus_plexus__plexus-xml__jar__3_0_0
, org_eclipse_sisu__org_eclipse_sisu_plexus__pom__0_9_0_M3
}:
patchMavenJar {
  name = "org.eclipse.sisu:org.eclipse.sisu.plexus:jar:0.9.0.M3";
  groupId = "org.eclipse.sisu";
  artifactId = "org.eclipse.sisu.plexus";
  version = "0.9.0.M3";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.plexus/0.9.0.M3/org.eclipse.sisu.plexus-0.9.0.M3.jar";
      sha256 = "c99674d3773e26154885661711f0b6d63aa5008f5cc99227a236756d4ad9de5e";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_9_0_M3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__2_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__2_6_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-xml__jar__3_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_plexus__pom__0_9_0_M3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
