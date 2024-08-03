{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-lang3__pom__3_14_0
}:
patchMavenJar {
  name = "org.apache.commons:commons-lang3:jar:3.14.0";
  groupId = "org.apache.commons";
  artifactId = "commons-lang3";
  version = "3.14.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-lang3/3.14.0/commons-lang3-3.14.0.jar";
      sha256 = "7b96bf3ee68949abb5bc465559ac270e0551596fa34523fddf890ec418dde13c";
    };
  };
  dependencies = [
    {
      drv = org_apache_commons__commons-lang3__pom__3_14_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
