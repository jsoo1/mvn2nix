{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "javax.inject:javax.inject:1";
  groupId = "javax.inject";
  artifactId = "javax.inject";
  version = "1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/javax/inject/javax.inject/1/javax.inject-1.jar";
        sha256 = "91c77044a50c481636c32d916fd89c9118a72195390452c81065080f957de7ff";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/javax/inject/javax.inject/1/javax.inject-1.pom";
        sha256 = "943e12b100627804638fa285805a0ab788a680266531e650921ebfe4621a8bfa";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
