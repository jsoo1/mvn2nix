{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-parent__pom__39
}:
patchMavenJar {
  name = "commons-io:commons-io:pom:2.5";
  groupId = "commons-io";
  artifactId = "commons-io";
  version = "2.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.5/commons-io-2.5.pom";
      sha256 = "28ebb2998bc7d7acb25078526971640892000f3413586ff42d611f1043bfec30";
    };
  };
  dependencies = [
    {
      drv = org_apache_commons__commons-parent__pom__39;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
