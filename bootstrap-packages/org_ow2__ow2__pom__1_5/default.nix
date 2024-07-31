{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.ow2:ow2:pom:1.5";
  groupId = "org.ow2";
  artifactId = "ow2";
  version = "1.5";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/ow2/ow2/1.5/ow2-1.5.pom";
        sha256 = "0f8a1b116e760b8fe6389c51b84e4b07a70fc11082d4f936e453b583dd50b43b";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
