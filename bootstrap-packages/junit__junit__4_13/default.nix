{
  lib
, pkgs
, patchMavenJar
, org_hamcrest__hamcrest-core__1_3
}:
patchMavenJar {
  name = "junit:junit:4.13";
  groupId = "junit";
  artifactId = "junit";
  version = "4.13";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/junit/junit/4.13/junit-4.13.jar";
        sha256 = "4b8532f63bdc0e0661507f947eb324a954d1dbac631ad19c8aa9a00feed1d863";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/junit/junit/4.13/junit-4.13.pom";
        sha256 = "9a0dc4c3fa2b086e708226737ef4bb37847c3cb1ce4e203517c09f6305b2267e";
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
