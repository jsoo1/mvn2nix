{
  lib
, pkgs
, patchMavenJar
, org_checkerframework__checker-qual__pom__3_42_0
}:
patchMavenJar {
  name = "org.checkerframework:checker-qual:jar:3.42.0";
  groupId = "org.checkerframework";
  artifactId = "checker-qual";
  version = "3.42.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/checkerframework/checker-qual/3.42.0/checker-qual-3.42.0.jar";
      sha256 = "ccaedd33af0b7894d9f2f3b644f4d19e43928e32902e61ac4d10777830f5aac7";
    };
  };
  dependencies = [
    {
      drv = org_checkerframework__checker-qual__pom__3_42_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
