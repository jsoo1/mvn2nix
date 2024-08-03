{
  lib
, pkgs
, patchMavenJar
, org_codehaus_woodstox__wstx-asl__jar__3_2_6
, stax__stax-api__jar__1_0_1
, org_sonatype_spice__model-builder__pom__1_3
}:
patchMavenJar {
  name = "org.sonatype.spice:model-builder:jar:1.3";
  groupId = "org.sonatype.spice";
  artifactId = "model-builder";
  version = "1.3";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/spice/model-builder/1.3/model-builder-1.3.jar";
      sha256 = "02161ae46462da669b1d7be3f9b64687c6347f84d04c890fa467eff6def0ae10";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_woodstox__wstx-asl__jar__3_2_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = stax__stax-api__jar__1_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_spice__model-builder__pom__1_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
