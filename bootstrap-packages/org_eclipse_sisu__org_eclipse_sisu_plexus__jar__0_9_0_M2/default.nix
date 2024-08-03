{
  lib
, pkgs
, patchMavenJar
, javax_annotation__javax_annotation-api__jar__1_2
, javax_enterprise__cdi-api__jar__1_2
, javax_inject__javax_inject__jar__1
, org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_9_0_M2
, org_codehaus_plexus__plexus-component-annotations__jar__2_1_0
, org_codehaus_plexus__plexus-classworlds__jar__2_6_0
, org_codehaus_plexus__plexus-utils__jar__3_3_0
, org_eclipse_sisu__org_eclipse_sisu_plexus__pom__0_9_0_M2
}:
patchMavenJar {
  name = "org.eclipse.sisu:org.eclipse.sisu.plexus:jar:0.9.0.M2";
  groupId = "org.eclipse.sisu";
  artifactId = "org.eclipse.sisu.plexus";
  version = "0.9.0.M2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.plexus/0.9.0.M2/org.eclipse.sisu.plexus-0.9.0.M2.jar";
      sha256 = "9500d303ce467e26d129dda8559c3f3a91277d41ab49d2c4b4a5779536a62fc1";
    };
  };
  dependencies = [
    {
      drv = javax_annotation__javax_annotation-api__jar__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_enterprise__cdi-api__jar__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_9_0_M2;
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
      drv = org_codehaus_plexus__plexus-utils__jar__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_plexus__pom__0_9_0_M2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
