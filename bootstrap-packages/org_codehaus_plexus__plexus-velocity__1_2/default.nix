{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-container-default__1_0-alpha-9-stable-1
, org_codehaus_plexus__plexus-utils__3_0_22
, org_sonatype_forge__forge-parent__pom__10
, classworlds__classworlds__1_1-alpha-2
, org_codehaus_plexus__plexus__pom__4_0
, org_codehaus_plexus__plexus-components__pom__4_0
, junit__junit__3_8_2
, commons-collections__commons-collections__3_1
, commons-lang__commons-lang__2_4
, org_apache_velocity__velocity__1_7
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-velocity:1.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-velocity";
  version = "1.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-velocity/1.2/plexus-velocity-1.2.jar";
        sha256 = "b4c4a0dbeacad54306a1ae230eff5ab45d58e3ab88c86ab7245d3a0772be57ab";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-velocity/1.2/plexus-velocity-1.2.pom";
        sha256 = "508a1682a95da8220e9bd582e2a9e1629d016cfe67c4769ee0b1755279ff5fd6";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-container-default__1_0-alpha-9-stable-1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_0_22;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_forge__forge-parent__pom__10;
      scope = "test";
      optional = false;
    }
    {
      drv = classworlds__classworlds__1_1-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__4_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-components__pom__4_0;
      scope = "test";
      optional = false;
    }
    {
      drv = junit__junit__3_8_2;
      scope = "test";
      optional = false;
    }
    {
      drv = commons-collections__commons-collections__3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-lang__commons-lang__2_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_velocity__velocity__1_7;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
