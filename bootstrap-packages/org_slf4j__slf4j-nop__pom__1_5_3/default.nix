{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-parent__pom__1_5_3
}:
patchMavenJar {
  name = "org.slf4j:slf4j-nop:pom:1.5.3";
  groupId = "org.slf4j";
  artifactId = "slf4j-nop";
  version = "1.5.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-nop/1.5.3/slf4j-nop-1.5.3.pom";
      sha256 = "61e919195487acd8ec3d831b8c66878c5b514f80183b7fed6c54aaede8ea0f9a";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-parent__pom__1_5_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
