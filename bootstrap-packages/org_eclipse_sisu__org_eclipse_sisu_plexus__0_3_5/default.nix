{
  lib
, pkgs
, patchMavenJar
, javax_annotation__javax_annotation-api__1_2
, org_eclipse_sisu__sisu-plexus__pom__0_3_5
, junit__junit__4_11
, org_codehaus_plexus__plexus-utils__3_0_24
, org_sonatype_oss__oss-parent__pom__9
, org_codehaus_plexus__plexus-classworlds__2_5_2
, org_hamcrest__hamcrest-core__1_3
, org_codehaus_plexus__plexus-component-annotations__1_5_5
, org_eclipse_sisu__org_eclipse_sisu_inject__0_3_5
}:
patchMavenJar {
  name = "org.eclipse.sisu:org.eclipse.sisu.plexus:0.3.5";
  groupId = "org.eclipse.sisu";
  artifactId = "org.eclipse.sisu.plexus";
  version = "0.3.5";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.plexus/0.3.5/org.eclipse.sisu.plexus-0.3.5.jar";
        sha256 = "7e4c61096d70826f20f7a7d55c59a5528e7aa5ad247ee2dfe544e4dd25f6a784";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.plexus/0.3.5/org.eclipse.sisu.plexus-0.3.5.pom";
        sha256 = "786523c9d78258a74aa13447a1676c2172acfdf432165d7adae2b7876d2d83d3";
      };
    }
  ];
  dependencies = [
    {
      drv = javax_annotation__javax_annotation-api__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__sisu-plexus__pom__0_3_5;
      scope = "test";
      optional = false;
    }
    {
      drv = junit__junit__4_11;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_0_24;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_oss__oss-parent__pom__9;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__2_5_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_hamcrest__hamcrest-core__1_3;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__0_3_5;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
