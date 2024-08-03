{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__jar__1_5_3
, org_slf4j__slf4j-jdk14__pom__1_5_3
}:
patchMavenJar {
  name = "org.slf4j:slf4j-jdk14:jar:1.5.3";
  groupId = "org.slf4j";
  artifactId = "slf4j-jdk14";
  version = "1.5.3";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-jdk14/1.5.3/slf4j-jdk14-1.5.3.jar";
      sha256 = "72b08b4f3416fb4f3d6dee2f57b0ca43d0137727ff74b8068702c03d663a8f31";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-api__jar__1_5_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-jdk14__pom__1_5_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
