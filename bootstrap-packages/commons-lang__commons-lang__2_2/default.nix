{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-lang:commons-lang:2.2";
  groupId = "commons-lang";
  artifactId = "commons-lang";
  version = "2.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-lang/commons-lang/2.2/commons-lang-2.2.jar";
        sha256 = "be6e67bdc8066a03891b7c7f1737fa90ae29708f5a6bafedda2a41336bb4d528";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-lang/commons-lang/2.2/commons-lang-2.2.pom";
        sha256 = "432cc82583b65c565774a24eb6fb458e189bd8e9ce9ab2b41bff0cddad6e1f27";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
