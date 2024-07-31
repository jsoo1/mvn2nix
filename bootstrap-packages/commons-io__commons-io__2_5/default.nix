{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__16
, org_apache_commons__commons-parent__pom__39
}:
patchMavenJar {
  name = "commons-io:commons-io:2.5";
  groupId = "commons-io";
  artifactId = "commons-io";
  version = "2.5";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.5/commons-io-2.5.jar";
        sha256 = "a10418348d234968600ccb1d988efcbbd08716e1d96936ccc1880e7d22513474";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.5/commons-io-2.5.pom";
        sha256 = "28ebb2998bc7d7acb25078526971640892000f3413586ff42d611f1043bfec30";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__16;
      scope = "test";
      optional = false;
    }
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
