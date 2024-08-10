{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-lang3__jar__3_7
, org_apache_commons__commons-text__pom__1_3
}:
patchMavenJar {
  name = "org.apache.commons:commons-text:jar:1.3";
  groupId = "org.apache.commons";
  artifactId = "commons-text";
  version = "1.3";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-text/1.3/commons-text-1.3.jar";
      sha256 = "8185b3a5311092d83ed1f184c2d093b3105d726bbd76867c32b3511542bb99a8";
    };
  };
  dependencies = [
    {
      drv = org_apache_commons__commons-lang3__jar__3_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-text__pom__1_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
