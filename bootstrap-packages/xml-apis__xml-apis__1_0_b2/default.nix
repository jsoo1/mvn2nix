{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "xml-apis:xml-apis:1.0.b2";
  groupId = "xml-apis";
  artifactId = "xml-apis";
  version = "1.0.b2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/xml-apis/xml-apis/1.0.b2/xml-apis-1.0.b2.jar";
        sha256 = "8232f3482c346d843e5e3fb361055771c1acc105b6d8a189eb9018c55948cf9f";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/xml-apis/xml-apis/1.0.b2/xml-apis-1.0.b2.pom";
        sha256 = "7bc38e7a0f8ca20b0caed607e00cbb144dc8d006ebec4aa193f55dcf391bad50";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
