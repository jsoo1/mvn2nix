{
  lib
, pkgs
, patchMavenJar
, org_hamcrest__hamcrest-parent__pom__1_3
}:
patchMavenJar {
  name = "hamcrest-core";
  coordinates = "org.hamcrest:hamcrest-core:pom:1.3";
  groupId = "org.hamcrest";
  artifactId = "hamcrest-core";
  version = "1.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.pom";
      sha256 = "fde386a7905173a1b103de6ab820727584b50d0e32282e2797787c20a64ffa93";
    };
  };
  dependencies = [
    {
      drv = org_hamcrest__hamcrest-parent__pom__1_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
