{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__21
, org_apache_maven__maven-parent__pom__33
, org_apache_maven_surefire__surefire__pom__3_0_0-M4
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-shared-utils:3.0.0-M4";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-shared-utils";
  version = "3.0.0-M4";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-shared-utils/3.0.0-M4/surefire-shared-utils-3.0.0-M4.jar";
        sha256 = "90574246a32a6d6d85e484bf075eb47bd5344581dc8496128b67527d2d28cd0d";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-shared-utils/3.0.0-M4/surefire-shared-utils-3.0.0-M4.pom";
        sha256 = "3cfb9c80f80ec190d4b5576da195ac4c43ea0a34656fc039a968e3a9f71bf7ac";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__21;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__33;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire__pom__3_0_0-M4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
