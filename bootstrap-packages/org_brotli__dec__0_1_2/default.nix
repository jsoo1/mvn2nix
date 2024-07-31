{
  lib
, pkgs
, patchMavenJar
, org_brotli__parent__pom__0_1_2
}:
patchMavenJar {
  name = "org.brotli:dec:0.1.2";
  groupId = "org.brotli";
  artifactId = "dec";
  version = "0.1.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/brotli/dec/0.1.2/dec-0.1.2.jar";
        sha256 = "615c0c3efef990d77831104475fba6a1f7971388691d4bad1471ad84101f6d52";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/brotli/dec/0.1.2/dec-0.1.2.pom";
        sha256 = "1d3db28e001eb9a01732d0c98be062af9af536d942897a0c937984af8b4228c0";
      };
    }
  ];
  dependencies = [
    {
      drv = org_brotli__parent__pom__0_1_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
