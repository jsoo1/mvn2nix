{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "info.picocli:picocli:4.5.0";
  groupId = "info.picocli";
  artifactId = "picocli";
  version = "4.5.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/info/picocli/picocli/4.5.0/picocli-4.5.0.jar";
        sha256 = "9058d90167d293f1379f49129f94424bc4c8c6cdc6a33e31bd6e4886a77733c1";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/info/picocli/picocli/4.5.0/picocli-4.5.0.pom";
        sha256 = "1a934b0302eaf46f2fedac08c11267301d2fc4cdf6abc8d932258b976723662d";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
