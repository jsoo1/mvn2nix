{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__31
, org_apache_commons__commons-parent__pom__65
}:
patchMavenJar {
  name = "commons-io:commons-io:2.15.1";
  groupId = "commons-io";
  artifactId = "commons-io";
  version = "2.15.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.15.1/commons-io-2.15.1.jar";
        sha256 = "a58af12ee1b68cfd2ebb0c27caef164f084381a00ec81a48cc275fd7ea54e154";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.15.1/commons-io-2.15.1.pom";
        sha256 = "171a1af82b6759eb5740b3b8809aca80113deaf1153036f2f4445901dfd3f91d";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__31;
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
