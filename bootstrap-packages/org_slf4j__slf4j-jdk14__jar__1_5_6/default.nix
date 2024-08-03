{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__jar__1_5_6
, org_slf4j__slf4j-jdk14__pom__1_5_6
}:
patchMavenJar {
  name = "org.slf4j:slf4j-jdk14:jar:1.5.6";
  groupId = "org.slf4j";
  artifactId = "slf4j-jdk14";
  version = "1.5.6";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-jdk14/1.5.6/slf4j-jdk14-1.5.6.jar";
      sha256 = "9b659d87e77ef601b0c564019b0d7fd1267c141f2d2dc55c9ba7613e63ca6786";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-api__jar__1_5_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-jdk14__pom__1_5_6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
