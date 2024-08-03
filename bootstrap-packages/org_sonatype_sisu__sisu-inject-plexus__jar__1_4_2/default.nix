{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-component-annotations__jar__1_5_4
, org_codehaus_plexus__plexus-classworlds__jar__2_2_3
, org_codehaus_plexus__plexus-utils__jar__2_0_5
, org_sonatype_sisu__sisu-inject-bean__jar__1_4_2
, org_sonatype_sisu__sisu-guice__jar__noaop__2_1_7
, org_sonatype_sisu__sisu-inject-plexus__pom__1_4_2
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-inject-plexus:jar:1.4.2";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-inject-plexus";
  version = "1.4.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-inject-plexus/1.4.2/sisu-inject-plexus-1.4.2.jar";
      sha256 = "a65e27aefbe74102d73cd7e3c5c7637021d294a9e7f33132f3c782a76714d0a3";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__1_5_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__2_2_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__2_0_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-inject-bean__jar__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__jar__noaop__2_1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-inject-plexus__pom__1_4_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
