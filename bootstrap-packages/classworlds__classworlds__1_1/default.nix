{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "classworlds:classworlds:1.1";
  groupId = "classworlds";
  artifactId = "classworlds";
  version = "1.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/classworlds/classworlds/1.1/classworlds-1.1.jar";
        sha256 = "4e3e0ad158ec60917e0de544c550f31cd65d5a97c3af1c1968bf427e4a9df2e4";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/classworlds/classworlds/1.1/classworlds-1.1.pom";
        sha256 = "25a1efc00bcd1f029fd20c44df843b8b12d1fa17485235470764f011d2f5cb29";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
