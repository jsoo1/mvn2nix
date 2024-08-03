{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_1
, org_apache_commons__commons-parent__pom__66
}:
patchMavenJar {
  name = "commons-codec:commons-codec:pom:1.16.1";
  groupId = "commons-codec";
  artifactId = "commons-codec";
  version = "1.16.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-codec/commons-codec/1.16.1/commons-codec-1.16.1.pom";
      sha256 = "b826ddd92f9d7cc64371a02fa0830c154d67c98370ea54a2d196e72eb590ad28";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-parent__pom__66;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
