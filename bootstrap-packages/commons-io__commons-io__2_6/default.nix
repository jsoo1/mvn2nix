{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-parent__pom__42
, org_apache__apache__pom__18
}:
patchMavenJar {
  name = "commons-io:commons-io:2.6";
  groupId = "commons-io";
  artifactId = "commons-io";
  version = "2.6";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.6/commons-io-2.6.jar";
        sha256 = "f877d304660ac2a142f3865badfc971dec7ed73c747c7f8d5d2f5139ca736513";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.6/commons-io-2.6.pom";
        sha256 = "0c23863893a2291f5a7afdbd8d15923b3948afd87e563fa341cdcf6eae338a60";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_commons__commons-parent__pom__42;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__18;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
