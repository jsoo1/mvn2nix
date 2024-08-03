{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-compiler__pom__2_8_4
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-compiler-manager:pom:2.8.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-compiler-manager";
  version = "2.8.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compiler-manager/2.8.4/plexus-compiler-manager-2.8.4.pom";
      sha256 = "4e9353e40fa16ba9384e8667490f0707267b30d75b77b6d588e4aaf8209936e9";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-compiler__pom__2_8_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
