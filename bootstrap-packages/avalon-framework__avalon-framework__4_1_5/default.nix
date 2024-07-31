{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "avalon-framework:avalon-framework:4.1.5";
  groupId = "avalon-framework";
  artifactId = "avalon-framework";
  version = "4.1.5";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/avalon-framework/avalon-framework/4.1.5/avalon-framework-4.1.5.jar";
        sha256 = "833f1e50dfa628f13d4a4206b3ec6d8f42e96284a35d76c072d880804b747a04";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/avalon-framework/avalon-framework/4.1.5/avalon-framework-4.1.5.pom";
        sha256 = "5ac1c7c2db29feb2568f5c71959a6c08a6c41e0659b126bfa308ac7421f2cac8";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
