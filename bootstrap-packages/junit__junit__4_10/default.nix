{
  lib
, pkgs
, patchMavenJar
, org_hamcrest__hamcrest-core__1_1
}:
patchMavenJar {
  name = "junit:junit:4.10";
  groupId = "junit";
  artifactId = "junit";
  version = "4.10";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/junit/junit/4.10/junit-4.10.jar";
        sha256 = "36a747ca1e0b86f6ea88055b8723bb87030d627766da6288bf077afdeeb0f75a";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/junit/junit/4.10/junit-4.10.pom";
        sha256 = "22a1bf0baae8b6106b7ad8026ecf27c59e7e47ddb49d62975036beadb2c62eb5";
      };
    }
  ];
  dependencies = [
    {
      drv = org_hamcrest__hamcrest-core__1_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
