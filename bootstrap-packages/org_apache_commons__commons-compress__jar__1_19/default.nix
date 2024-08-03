{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-compress__pom__1_19
}:
patchMavenJar {
  name = "org.apache.commons:commons-compress:jar:1.19";
  groupId = "org.apache.commons";
  artifactId = "commons-compress";
  version = "1.19";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-compress/1.19/commons-compress-1.19.jar";
      sha256 = "ff2d59fad74e867630fbc7daab14c432654712ac624dbee468d220677b124dd5";
    };
  };
  dependencies = [
    {
      drv = org_apache_commons__commons-compress__pom__1_19;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
