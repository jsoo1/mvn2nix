{
  lib
, pkgs
, patchMavenJar
, commons-logging__commons-logging__jar__1_0_3
, commons-el__commons-el__pom__1_0
}:
patchMavenJar {
  name = "commons-el";
  coordinates = "commons-el:commons-el:jar:1.0";
  groupId = "commons-el";
  artifactId = "commons-el";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-el/commons-el/1.0/commons-el-1.0.jar";
      sha256 = "0d67550ec0022b653453c759f063a643c2fe64bc48faa8b25f95a220e2a282e2";
    };
  };
  dependencies = [
    {
      drv = commons-logging__commons-logging__jar__1_0_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-el__commons-el__pom__1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
