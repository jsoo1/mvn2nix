{
  lib
, pkgs
, patchMavenJar
, org_hamcrest__hamcrest-core__1_3
}:
patchMavenJar {
  name = "junit:junit:4.12";
  groupId = "junit";
  artifactId = "junit";
  version = "4.12";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/junit/junit/4.12/junit-4.12.jar";
        sha256 = "59721f0805e223d84b90677887d9ff567dc534d7c502ca903c0c2b17f05c116a";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/junit/junit/4.12/junit-4.12.pom";
        sha256 = "90f163f78e3ffb6f1c7ad97de9e7eba4eea25807141b85d6d12be67ca25449c4";
      };
    }
  ];
  dependencies = [
    {
      drv = org_hamcrest__hamcrest-core__1_3;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
