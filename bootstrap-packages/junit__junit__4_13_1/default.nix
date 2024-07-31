{
  lib
, pkgs
, patchMavenJar
, org_hamcrest__hamcrest-core__1_3
}:
patchMavenJar {
  name = "junit:junit:4.13.1";
  groupId = "junit";
  artifactId = "junit";
  version = "4.13.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/junit/junit/4.13.1/junit-4.13.1.jar";
        sha256 = "c30719db974d6452793fe191b3638a5777005485bae145924044530ffa5f6122";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/junit/junit/4.13.1/junit-4.13.1.pom";
        sha256 = "c68defdedaaaeae1432e12a5302bf2bfa05057d8b5acc65aaa3f3d9853ff40d6";
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
