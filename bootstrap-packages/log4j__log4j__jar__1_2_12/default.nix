{
  lib
, pkgs
, patchMavenJar
, log4j__log4j__pom__1_2_12
}:
patchMavenJar {
  name = "log4j:log4j:jar:1.2.12";
  groupId = "log4j";
  artifactId = "log4j";
  version = "1.2.12";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/log4j/log4j/1.2.12/log4j-1.2.12.jar";
      sha256 = "dc67378cf428c06408e7959e83bdc1518dd22ccd313e7c28a986612d65c276c7";
    };
  };
  dependencies = [
    {
      drv = log4j__log4j__pom__1_2_12;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
