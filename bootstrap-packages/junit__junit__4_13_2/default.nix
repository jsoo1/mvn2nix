{
  lib
, pkgs
, patchMavenJar
, org_hamcrest__hamcrest-core__1_3
}:
patchMavenJar {
  name = "junit:junit:4.13.2";
  groupId = "junit";
  artifactId = "junit";
  version = "4.13.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/junit/junit/4.13.2/junit-4.13.2.jar";
        sha256 = "8e495b634469d64fb8acfa3495a065cbacc8a0fff55ce1e31007be4c16dc57d3";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/junit/junit/4.13.2/junit-4.13.2.pom";
        sha256 = "569b6977ee4603c965c1c46c3058fa6e969291b0160eb6964dd092cd89eadd94";
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
