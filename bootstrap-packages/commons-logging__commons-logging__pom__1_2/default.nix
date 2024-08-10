{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-parent__pom__34
}:
patchMavenJar {
  name = "commons-logging:commons-logging:pom:1.2";
  groupId = "commons-logging";
  artifactId = "commons-logging";
  version = "1.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.2/commons-logging-1.2.pom";
      sha256 = "c91ab5aa570d86f6fd07cc158ec6bc2c50080402972ee9179fe24100739fbb20";
    };
  };
  dependencies = [
    {
      drv = org_apache_commons__commons-parent__pom__34;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
