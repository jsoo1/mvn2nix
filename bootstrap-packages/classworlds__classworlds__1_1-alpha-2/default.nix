{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "classworlds:classworlds:1.1-alpha-2";
  groupId = "classworlds";
  artifactId = "classworlds";
  version = "1.1-alpha-2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/classworlds/classworlds/1.1-alpha-2/classworlds-1.1-alpha-2.jar";
        sha256 = "2bf4e59f3acd106fea6145a9a88fe8956509f8b9c0fdd11eb96fee757269e3f3";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/classworlds/classworlds/1.1-alpha-2/classworlds-1.1-alpha-2.pom";
        sha256 = "0cc647963b74ad1d7a37c9868e9e5a8f474e49297e1863582253a08a4c719cb1";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
