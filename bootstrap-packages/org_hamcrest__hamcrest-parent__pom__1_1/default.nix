{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.hamcrest:hamcrest-parent:pom:1.1";
  groupId = "org.hamcrest";
  artifactId = "hamcrest-parent";
  version = "1.1";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/hamcrest/hamcrest-parent/1.1/hamcrest-parent-1.1.pom";
        sha256 = "14e6950a1a6298cbcb83cf9429cac415ff273167f6f15876859413b0d6c07e3a";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
