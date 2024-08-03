{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_1
, org_apache_commons__commons-parent__pom__65
}:
patchMavenJar {
  name = "commons-io:commons-io:pom:2.15.1";
  groupId = "commons-io";
  artifactId = "commons-io";
  version = "2.15.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.15.1/commons-io-2.15.1.pom";
      sha256 = "171a1af82b6759eb5740b3b8809aca80113deaf1153036f2f4445901dfd3f91d";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-parent__pom__65;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
