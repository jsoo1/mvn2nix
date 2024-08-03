{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_1
, org_apache_commons__commons-parent__pom__66
}:
patchMavenJar {
  name = "org.apache.commons:commons-compress:pom:1.26.1";
  groupId = "org.apache.commons";
  artifactId = "commons-compress";
  version = "1.26.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-compress/1.26.1/commons-compress-1.26.1.pom";
      sha256 = "5f448a021d88c96f3840dfe619128d62e5cfb62712cd6e66dca8a7704945b06e";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-parent__pom__66;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
