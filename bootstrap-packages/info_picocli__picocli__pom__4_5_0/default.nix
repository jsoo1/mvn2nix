{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "info.picocli:picocli:pom:4.5.0";
  groupId = "info.picocli";
  artifactId = "picocli";
  version = "4.5.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/info/picocli/picocli/4.5.0/picocli-4.5.0.pom";
      sha256 = "1a934b0302eaf46f2fedac08c11267301d2fc4cdf6abc8d932258b976723662d";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
