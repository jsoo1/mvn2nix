{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-bom__pom__2_0_13
}:
patchMavenJar {
  name = "org.slf4j:slf4j-parent:pom:2.0.13";
  groupId = "org.slf4j";
  artifactId = "slf4j-parent";
  version = "2.0.13";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-parent/2.0.13/slf4j-parent-2.0.13.pom";
        sha256 = "67facfd51f06935cea85615a04775d70d80bfd03ad0f37670351f920ed0bb58a";
      };
    }
  ];
  dependencies = [
    {
      drv = org_slf4j__slf4j-bom__pom__2_0_13;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
