{
  lib
, pkgs
, patchMavenJar
, org_jdom__jdom2__pom__2_0_6_1
}:
patchMavenJar {
  name = "org.jdom:jdom2:jar:2.0.6.1";
  groupId = "org.jdom";
  artifactId = "jdom2";
  version = "2.0.6.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/jdom/jdom2/2.0.6.1/jdom2-2.0.6.1.jar";
      sha256 = "0b20f45e3a0fd8f0d12cdc5316b06776e902b1365db00118876f9175c60f302c";
    };
  };
  dependencies = [
    {
      drv = org_jdom__jdom2__pom__2_0_6_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
