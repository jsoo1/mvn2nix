{
  lib
, pkgs
, patchMavenJar
, org_hamcrest__hamcrest-core__pom__1_3
}:
patchMavenJar {
  name = "org.hamcrest:hamcrest-core:jar:1.3";
  groupId = "org.hamcrest";
  artifactId = "hamcrest-core";
  version = "1.3";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar";
      sha256 = "66fdef91e9739348df7a096aa384a5685f4e875584cce89386a7a47251c4d8e9";
    };
  };
  dependencies = [
    {
      drv = org_hamcrest__hamcrest-core__pom__1_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
