{
  lib
, pkgs
, patchMavenJar
, org_tukaani__xz__1_8
, org_apache__apache__pom__21
, com_github_luben__zstd-jni__1_4_0-1
, org_brotli__dec__0_1_2
, org_apache_commons__commons-parent__pom__48
}:
patchMavenJar {
  name = "org.apache.commons:commons-compress:1.19";
  groupId = "org.apache.commons";
  artifactId = "commons-compress";
  version = "1.19";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-compress/1.19/commons-compress-1.19.jar";
        sha256 = "ff2d59fad74e867630fbc7daab14c432654712ac624dbee468d220677b124dd5";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-compress/1.19/commons-compress-1.19.pom";
        sha256 = "9d5a690d1dea6a747e0dd8e74e64447167f395cb8f148010b8241334f58b525b";
      };
    }
  ];
  dependencies = [
    {
      drv = org_tukaani__xz__1_8;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_apache__apache__pom__21;
      scope = "test";
      optional = false;
    }
    {
      drv = com_github_luben__zstd-jni__1_4_0-1;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_brotli__dec__0_1_2;
      scope = "compile";
      optional = true;
    }
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
