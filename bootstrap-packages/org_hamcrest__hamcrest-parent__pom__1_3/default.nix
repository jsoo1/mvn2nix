{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.hamcrest:hamcrest-parent:pom:1.3";
  groupId = "org.hamcrest";
  artifactId = "hamcrest-parent";
  version = "1.3";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/hamcrest/hamcrest-parent/1.3/hamcrest-parent-1.3.pom";
        sha256 = "6d535f94efb663bdb682c9f27a50335394688009642ba7a9677504bc1be4129b";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
