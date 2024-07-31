{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "com.lmax:disruptor:3.4.4";
  groupId = "com.lmax";
  artifactId = "disruptor";
  version = "3.4.4";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/lmax/disruptor/3.4.4/disruptor-3.4.4.jar";
        sha256 = "1524ed31f13bcabee1b6146e67be30c6317cb94fcd0c7c2f7c7a1f3e82087c51";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/lmax/disruptor/3.4.4/disruptor-3.4.4.pom";
        sha256 = "df840dacb358bdec8e9c16409721e4b0eb0524617d42426df728376fc587422f";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
