{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-parent__pom__48
}:
patchMavenJar {
  name = "org.apache.commons:commons-compress:pom:1.19";
  groupId = "org.apache.commons";
  artifactId = "commons-compress";
  version = "1.19";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-compress/1.19/commons-compress-1.19.pom";
      sha256 = "9d5a690d1dea6a747e0dd8e74e64447167f395cb8f148010b8241334f58b525b";
    };
  };
  dependencies = [
    {
      drv = org_apache_commons__commons-parent__pom__48;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
