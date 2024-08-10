{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-9-stable-1
, junit__junit__jar__3_8_2
, org_codehaus_plexus__plexus-utils__jar__3_0_22
, classworlds__classworlds__jar__1_1-alpha-2
, commons-collections__commons-collections__jar__3_1
, org_apache_velocity__velocity__jar__1_7
, commons-lang__commons-lang__jar__2_4
, org_codehaus_plexus__plexus-velocity__pom__1_2
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-velocity:jar:1.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-velocity";
  version = "1.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-velocity/1.2/plexus-velocity-1.2.jar";
      sha256 = "b4c4a0dbeacad54306a1ae230eff5ab45d58e3ab88c86ab7245d3a0772be57ab";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-9-stable-1;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__3_8_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_22;
      scope = "compile";
      optional = false;
    }
    {
      drv = classworlds__classworlds__jar__1_1-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-collections__commons-collections__jar__3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_velocity__velocity__jar__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-lang__commons-lang__jar__2_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-velocity__pom__1_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
