{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__pom__1_7_36
}:
patchMavenJar {
  name = "org.slf4j:slf4j-api:jar:1.7.36";
  groupId = "org.slf4j";
  artifactId = "slf4j-api";
  version = "1.7.36";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/1.7.36/slf4j-api-1.7.36.jar";
      sha256 = "d3ef575e3e4979678dc01bf1dcce51021493b4d11fb7f1be8ad982877c16a1c0";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-api__pom__1_7_36;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
