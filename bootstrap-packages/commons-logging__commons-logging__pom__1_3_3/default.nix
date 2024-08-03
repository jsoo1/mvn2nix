{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_11_0-M2
, org_apache_commons__commons-parent__pom__71
}:
patchMavenJar {
  name = "commons-logging:commons-logging:pom:1.3.3";
  groupId = "commons-logging";
  artifactId = "commons-logging";
  version = "1.3.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.3.3/commons-logging-1.3.3.pom";
      sha256 = "125d6142eac3f774440ba702c05f28f9e098c52d10712ae11496acb77106b3ba";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_11_0-M2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-parent__pom__71;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
