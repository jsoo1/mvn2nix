{
  lib
, pkgs
, patchMavenJar
, org_eclipse_sisu__org_eclipse_sisu_plexus__0_3_5
, org_codehaus_plexus__plexus-classworlds__2_5_2
, org_codehaus_plexus__plexus__pom__13
, org_eclipse_sisu__org_eclipse_sisu_inject__0_3_5
, org_apache_maven__maven-api-meta__4_0_0-alpha-5
, javax_annotation__javax_annotation-api__1_2
, org_codehaus_plexus__plexus-component-annotations__1_5_5
, org_apache_maven__maven-api-xml__4_0_0-alpha-5
, org_codehaus_plexus__plexus-xml__4_0_0
, org_apache_maven__maven-xml-impl__4_0_0-alpha-5
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:4.0.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "4.0.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/4.0.0/plexus-utils-4.0.0.jar";
        sha256 = "270cd703b48c6e5c8c691f1875f22d62d22cfe072c73ae2f5814d83d68c1da0b";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/4.0.0/plexus-utils-4.0.0.pom";
        sha256 = "a44c5479426dea0e7bfffd2ec3adf49c68515019788965c4d231fc3f04da4129";
      };
    }
  ];
  dependencies = [
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_plexus__0_3_5;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__2_5_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__13;
      scope = "test";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__0_3_5;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_apache_maven__maven-api-meta__4_0_0-alpha-5;
      scope = "compile";
      optional = true;
    }
    {
      drv = javax_annotation__javax_annotation-api__1_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__1_5_5;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_apache_maven__maven-api-xml__4_0_0-alpha-5;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_codehaus_plexus__plexus-xml__4_0_0;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_apache_maven__maven-xml-impl__4_0_0-alpha-5;
      scope = "compile";
      optional = true;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
