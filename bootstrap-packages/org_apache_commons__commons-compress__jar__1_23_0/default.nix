{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-compress__pom__1_23_0
}:
patchMavenJar {
  name = "commons-compress";
  coordinates = "org.apache.commons:commons-compress:jar:1.23.0";
  groupId = "org.apache.commons";
  artifactId = "commons-compress";
  version = "1.23.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-compress/1.23.0/commons-compress-1.23.0.jar";
      sha256 = "c267f17160e9ef662b4d78b7f29dca7c82b15c5cff2cb6a9865ef4ab3dd5b787";
    };
  };
  dependencies = [
    {
      drv = org_apache_commons__commons-compress__pom__1_23_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
