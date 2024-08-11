{
  lib
, pkgs
, patchMavenJar
, xml-apis__xml-apis__pom__1_0_b2
}:
patchMavenJar {
  name = "xml-apis";
  coordinates = "xml-apis:xml-apis:jar:1.0.b2";
  groupId = "xml-apis";
  artifactId = "xml-apis";
  version = "1.0.b2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/xml-apis/xml-apis/1.0.b2/xml-apis-1.0.b2.jar";
      sha256 = "8232f3482c346d843e5e3fb361055771c1acc105b6d8a189eb9018c55948cf9f";
    };
  };
  dependencies = [
    {
      drv = xml-apis__xml-apis__pom__1_0_b2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
