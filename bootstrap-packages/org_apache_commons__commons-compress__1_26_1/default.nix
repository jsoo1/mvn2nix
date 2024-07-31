{
  lib
, pkgs
, patchMavenJar
, commons-codec__commons-codec__1_16_1
, org_apache__apache__pom__31
, org_apache_commons__commons-parent__pom__66
, com_github_luben__zstd-jni__1_5_5-11
, org_apache_commons__commons-lang3__3_14_0
, org_tukaani__xz__1_9
, org_brotli__dec__0_1_2
, org_ow2_asm__asm__9_6
, commons-io__commons-io__2_15_1
}:
patchMavenJar {
  name = "org.apache.commons:commons-compress:1.26.1";
  groupId = "org.apache.commons";
  artifactId = "commons-compress";
  version = "1.26.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-compress/1.26.1/commons-compress-1.26.1.jar";
        sha256 = "27bb5d40f37c3bb7205b4a0540247df057715e9f6cbbd97d626ab8b50318bb04";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-compress/1.26.1/commons-compress-1.26.1.pom";
        sha256 = "5f448a021d88c96f3840dfe619128d62e5cfb62712cd6e66dca8a7704945b06e";
      };
    }
  ];
  dependencies = [
    {
      drv = commons-codec__commons-codec__1_16_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__31;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-parent__pom__66;
      scope = "test";
      optional = false;
    }
    {
      drv = com_github_luben__zstd-jni__1_5_5-11;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_apache_commons__commons-lang3__3_14_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_tukaani__xz__1_9;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_brotli__dec__0_1_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_ow2_asm__asm__9_6;
      scope = "compile";
      optional = true;
    }
    {
      drv = commons-io__commons-io__2_15_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
