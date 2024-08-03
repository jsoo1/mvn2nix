{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_apache_commons__commons-parent__pom__69
}:
patchMavenJar {
  name = "commons-io:commons-io:pom:2.16.1";
  groupId = "commons-io";
  artifactId = "commons-io";
  version = "2.16.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.16.1/commons-io-2.16.1.pom";
      sha256 = "5777d292251c7895c04a4c57015683ec3b353a12486c9b3e7178e9b0b3c38fff";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-parent__pom__69;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
