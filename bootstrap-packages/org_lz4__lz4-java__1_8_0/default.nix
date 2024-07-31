{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.lz4:lz4-java:1.8.0";
  groupId = "org.lz4";
  artifactId = "lz4-java";
  version = "1.8.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/lz4/lz4-java/1.8.0/lz4-java-1.8.0.jar";
        sha256 = "d74a3334fb35195009b338a951f918203d6bbca3d1d359033dc33edd1cadc9ef";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/lz4/lz4-java/1.8.0/lz4-java-1.8.0.pom";
        sha256 = "0db8adb51e132454a5c406debb2f1a0df81f93dd59fbe20cb947102994689034";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
