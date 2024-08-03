{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-parent__pom__42
}:
patchMavenJar {
  name = "commons-io:commons-io:pom:2.6";
  groupId = "commons-io";
  artifactId = "commons-io";
  version = "2.6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.6/commons-io-2.6.pom";
      sha256 = "0c23863893a2291f5a7afdbd8d15923b3948afd87e563fa341cdcf6eae338a60";
    };
  };
  dependencies = [
    {
      drv = org_apache_commons__commons-parent__pom__42;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
