{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-containers__pom__1_0-beta-3_0_5
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-annotations:pom:1.0-beta-3.0.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-annotations";
  version = "1.0-beta-3.0.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/1.0-beta-3.0.5/plexus-component-annotations-1.0-beta-3.0.5.pom";
      sha256 = "e6f2502be012dd1c5dab7656fcb4a3ab7c49123a8a3e786efa92cfd5b920b948";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-containers__pom__1_0-beta-3_0_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
