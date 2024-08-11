{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_9_3
, org_apache_commons__commons-parent__pom__58
}:
patchMavenJar {
  name = "commons-io";
  coordinates = "commons-io:commons-io:pom:2.13.0";
  groupId = "commons-io";
  artifactId = "commons-io";
  version = "2.13.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.13.0/commons-io-2.13.0.pom";
      sha256 = "db3fed64c2e1774ebfd6b1a749037732b149b9111dd7e6b985f08dda55470439";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_9_3;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-parent__pom__58;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
