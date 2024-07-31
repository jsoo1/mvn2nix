{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__30
, org_apache_commons__commons-parent__pom__64
}:
patchMavenJar {
  name = "org.apache.commons:commons-lang3:3.14.0";
  groupId = "org.apache.commons";
  artifactId = "commons-lang3";
  version = "3.14.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-lang3/3.14.0/commons-lang3-3.14.0.jar";
        sha256 = "7b96bf3ee68949abb5bc465559ac270e0551596fa34523fddf890ec418dde13c";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-lang3/3.14.0/commons-lang3-3.14.0.pom";
        sha256 = "110438863bad37c28f906bf87016e38c7a8c758ba321e09d11dc5a2363a8e79e";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__30;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-parent__pom__64;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
