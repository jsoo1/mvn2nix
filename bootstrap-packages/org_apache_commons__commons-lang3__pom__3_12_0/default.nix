{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_7_1
, org_apache_commons__commons-parent__pom__52
}:
patchMavenJar {
  name = "org.apache.commons:commons-lang3:pom:3.12.0";
  groupId = "org.apache.commons";
  artifactId = "commons-lang3";
  version = "3.12.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-lang3/3.12.0/commons-lang3-3.12.0.pom";
      sha256 = "82d31f1dcc4583effd744e979165b16da64bf86bca623fc5d1b03ed94f45c85a";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_7_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-parent__pom__52;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
