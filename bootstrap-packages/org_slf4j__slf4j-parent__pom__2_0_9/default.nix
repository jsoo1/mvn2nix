{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-bom__pom__2_0_9
}:
patchMavenJar {
  name = "org.slf4j:slf4j-parent:pom:2.0.9";
  groupId = "org.slf4j";
  artifactId = "slf4j-parent";
  version = "2.0.9";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-parent/2.0.9/slf4j-parent-2.0.9.pom";
        sha256 = "c307f0424141f1c500ae5cf0d3868e4866cb219ed5e399b66c5a07c61ea21fd5";
      };
    }
  ];
  dependencies = [
    {
      drv = org_slf4j__slf4j-bom__pom__2_0_9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
