{
  lib
, pkgs
, patchMavenJar
, org_checkerframework__checker-qual__pom__3_5_0
}:
patchMavenJar {
  name = "org.checkerframework:checker-qual:jar:3.5.0";
  groupId = "org.checkerframework";
  artifactId = "checker-qual";
  version = "3.5.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/checkerframework/checker-qual/3.5.0/checker-qual-3.5.0.jar";
      sha256 = "729990b3f18a95606fc2573836b6958bcdb44cb52bfbd1b7aa9c339cff35a5a4";
    };
  };
  dependencies = [
    {
      drv = org_checkerframework__checker-qual__pom__3_5_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
