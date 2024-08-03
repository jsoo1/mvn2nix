{
  lib
, pkgs
, patchMavenJar
, junit__junit__jar__3_7
, commons-lang__commons-lang__pom__1_0
}:
patchMavenJar {
  name = "commons-lang:commons-lang:jar:1.0";
  groupId = "commons-lang";
  artifactId = "commons-lang";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-lang/commons-lang/1.0/commons-lang-1.0.jar";
      sha256 = "d327c033f798997b9ad85b33242e2e88b49bbb1369cfe23e10b2686bd4cf3218";
    };
  };
  dependencies = [
    {
      drv = junit__junit__jar__3_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-lang__commons-lang__pom__1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
