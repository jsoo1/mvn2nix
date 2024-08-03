{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-parent__pom__2_0_13
}:
patchMavenJar {
  name = "org.slf4j:slf4j-simple:pom:2.0.13";
  groupId = "org.slf4j";
  artifactId = "slf4j-simple";
  version = "2.0.13";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-simple/2.0.13/slf4j-simple-2.0.13.pom";
      sha256 = "4a4d4bb24cf8abe2cb874a836f5e743d3485b7db04fcff6fc071495253b5cfa8";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-parent__pom__2_0_13;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
