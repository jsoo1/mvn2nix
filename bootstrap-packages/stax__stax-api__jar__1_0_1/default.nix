{
  lib
, pkgs
, patchMavenJar
, stax__stax-api__pom__1_0_1
}:
patchMavenJar {
  name = "stax:stax-api:jar:1.0.1";
  groupId = "stax";
  artifactId = "stax-api";
  version = "1.0.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/stax/stax-api/1.0.1/stax-api-1.0.1.jar";
      sha256 = "d1968436fc216c901fb9b82c7e878b50fd1d30091676da95b2edd3a9c0ccf92e";
    };
  };
  dependencies = [
    {
      drv = stax__stax-api__pom__1_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
