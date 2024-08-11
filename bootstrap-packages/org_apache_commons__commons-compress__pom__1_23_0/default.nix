{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_9_1
, org_apache_commons__commons-parent__pom__56
}:
patchMavenJar {
  name = "commons-compress";
  coordinates = "org.apache.commons:commons-compress:pom:1.23.0";
  groupId = "org.apache.commons";
  artifactId = "commons-compress";
  version = "1.23.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-compress/1.23.0/commons-compress-1.23.0.pom";
      sha256 = "59dc121406ba9e8b5b512bcef4571351fed1f902b939cf527d893b7f729454c9";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_9_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-parent__pom__56;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
