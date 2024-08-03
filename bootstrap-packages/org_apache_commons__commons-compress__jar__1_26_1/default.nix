{
  lib
, pkgs
, patchMavenJar
, commons-codec__commons-codec__jar__1_16_1
, commons-io__commons-io__jar__2_15_1
, org_apache_commons__commons-lang3__jar__3_14_0
, org_apache_commons__commons-compress__pom__1_26_1
}:
patchMavenJar {
  name = "org.apache.commons:commons-compress:jar:1.26.1";
  groupId = "org.apache.commons";
  artifactId = "commons-compress";
  version = "1.26.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-compress/1.26.1/commons-compress-1.26.1.jar";
      sha256 = "27bb5d40f37c3bb7205b4a0540247df057715e9f6cbbd97d626ab8b50318bb04";
    };
  };
  dependencies = [
    {
      drv = commons-codec__commons-codec__jar__1_16_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_15_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-lang3__jar__3_14_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-compress__pom__1_26_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
