{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-parent__pom__25
}:
patchMavenJar {
  name = "commons-io:commons-io:pom:2.4";
  groupId = "commons-io";
  artifactId = "commons-io";
  version = "2.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.4/commons-io-2.4.pom";
      sha256 = "b2b5dd46cf998fa626eb6f8a1c114f6167c8d392694164e62533e5898e9b31f2";
    };
  };
  dependencies = [
    {
      drv = org_apache_commons__commons-parent__pom__25;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
