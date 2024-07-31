{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.jctools:jctools-core:4.0.3";
  groupId = "org.jctools";
  artifactId = "jctools-core";
  version = "4.0.3";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/jctools/jctools-core/4.0.3/jctools-core-4.0.3.jar";
        sha256 = "1c658f5107e3a8a2ba61260ca25b85f47b0c323fd14f0b25a8d7ebe0519e017a";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/jctools/jctools-core/4.0.3/jctools-core-4.0.3.pom";
        sha256 = "d5001d04dd0cfa93af83383a6edae7634d16c467303fe56542cb2853865ed9ab";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
