{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "javax.activation:activation:1.1";
  groupId = "javax.activation";
  artifactId = "activation";
  version = "1.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/javax/activation/activation/1.1/activation-1.1.jar";
        sha256 = "2881c79c9d6ef01c58e62beea13e9d1ac8b8baa16f2fc198ad6e6776defdcdd3";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/javax/activation/activation/1.1/activation-1.1.pom";
        sha256 = "d490e540a11504b9d71718b1c85fef7b3de6802361290824539b076d58faa8a0";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
