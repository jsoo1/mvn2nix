{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__19
, org_apache_commons__commons-lang3__3_7
, org_apache_commons__commons-parent__pom__45
}:
patchMavenJar {
  name = "org.apache.commons:commons-text:1.3";
  groupId = "org.apache.commons";
  artifactId = "commons-text";
  version = "1.3";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-text/1.3/commons-text-1.3.jar";
        sha256 = "8185b3a5311092d83ed1f184c2d093b3105d726bbd76867c32b3511542bb99a8";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-text/1.3/commons-text-1.3.pom";
        sha256 = "deeb2ba9701e495dc31d32633eb86b94b24b0a96e0dc67fb87e7062f153027aa";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__19;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-lang3__3_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-parent__pom__45;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
