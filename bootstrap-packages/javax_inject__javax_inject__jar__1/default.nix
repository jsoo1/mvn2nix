{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__pom__1
}:
patchMavenJar {
  name = "javax.inject:javax.inject:jar:1";
  groupId = "javax.inject";
  artifactId = "javax.inject";
  version = "1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/inject/javax.inject/1/javax.inject-1.jar";
      sha256 = "91c77044a50c481636c32d916fd89c9118a72195390452c81065080f957de7ff";
    };
  };
  dependencies = [
    {
      drv = javax_inject__javax_inject__pom__1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
