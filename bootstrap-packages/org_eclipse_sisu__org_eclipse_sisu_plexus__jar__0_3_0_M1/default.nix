{
  lib
, pkgs
, patchMavenJar
, javax_enterprise__cdi-api__jar__1_0
, javax_annotation__jsr250-api__jar__1_0
, javax_inject__javax_inject__jar__1
, org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_3_0_M1
, org_codehaus_plexus__plexus-component-annotations__jar__1_5_5
, org_codehaus_plexus__plexus-classworlds__jar__2_5_1
, org_codehaus_plexus__plexus-utils__jar__2_1
, org_eclipse_sisu__org_eclipse_sisu_plexus__pom__0_3_0_M1
}:
patchMavenJar {
  name = "org.eclipse.sisu:org.eclipse.sisu.plexus:jar:0.3.0.M1";
  groupId = "org.eclipse.sisu";
  artifactId = "org.eclipse.sisu.plexus";
  version = "0.3.0.M1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.plexus/0.3.0.M1/org.eclipse.sisu.plexus-0.3.0.M1.jar";
      sha256 = "35b545ead7e5513ec8c4974a984659ec68738e6761bb7c08a9876a2e901d38ae";
    };
  };
  dependencies = [
    {
      drv = javax_enterprise__cdi-api__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_annotation__jsr250-api__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_3_0_M1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__2_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_plexus__pom__0_3_0_M1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
