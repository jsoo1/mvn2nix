{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-compiler__pom__2_8_4
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-compilers:pom:2.8.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-compilers";
  version = "2.8.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compilers/2.8.4/plexus-compilers-2.8.4.pom";
      sha256 = "82a8175c836ce32d32077191111ebc256e2cbb7d907909edbb6b9b66e88521a6";
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
