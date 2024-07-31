{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__31
, org_apache_commons__commons-parent__pom__66
, com_github_luben__zstd-jni__1_5_5-11
, org_apache_commons__commons-lang3__3_14_0
, org_tukaani__xz__1_9
, commons-codec__commons-codec__1_16_1
, org_brotli__dec__0_1_2
, org_ow2_asm__asm__9_6
, commons-io__commons-io__2_15_1
}:
patchMavenJar {
  name = "org.apache.commons:commons-compress:1.26.0";
  groupId = "org.apache.commons";
  artifactId = "commons-compress";
  version = "1.26.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-compress/1.26.0/commons-compress-1.26.0.jar";
        sha256 = "051aceb8bbcc62d0f5b2b8ac72c53767f9c59bfbd050151e65bef6f51c8ed9c9";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-compress/1.26.0/commons-compress-1.26.0.pom";
        sha256 = "c1c9681f88d9421730c4da6176492bbaa54052a2326df9e40bc34f4c405227af";
      };
    }
  ];
  dependencies = [
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
      drv = commons-codec__commons-codec__1_16_1;
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
