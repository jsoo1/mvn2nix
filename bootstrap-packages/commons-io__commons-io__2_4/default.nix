{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__9
, org_apache_commons__commons-parent__pom__25
}:
patchMavenJar {
  name = "commons-io:commons-io:2.4";
  groupId = "commons-io";
  artifactId = "commons-io";
  version = "2.4";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.4/commons-io-2.4.jar";
        sha256 = "cc6a41dc3eaacc9e440a6bd0d2890b20d36b4ee408fe2d67122f328bb6e01581";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.4/commons-io-2.4.pom";
        sha256 = "b2b5dd46cf998fa626eb6f8a1c114f6167c8d392694164e62533e5898e9b31f2";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__9;
      scope = "test";
      optional = false;
    }
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
