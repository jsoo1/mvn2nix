{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "log4j:log4j:1.2.12";
  groupId = "log4j";
  artifactId = "log4j";
  version = "1.2.12";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/log4j/log4j/1.2.12/log4j-1.2.12.jar";
        sha256 = "dc67378cf428c06408e7959e83bdc1518dd22ccd313e7c28a986612d65c276c7";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/log4j/log4j/1.2.12/log4j-1.2.12.pom";
        sha256 = "cb54dedc5d8c4510148dfa792701cbac1a84c383a84f48f5a32e6d7e460bbb72";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
