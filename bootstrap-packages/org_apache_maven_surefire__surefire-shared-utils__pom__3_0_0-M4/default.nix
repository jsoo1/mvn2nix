{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire__pom__3_0_0-M4
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-shared-utils:pom:3.0.0-M4";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-shared-utils";
  version = "3.0.0-M4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-shared-utils/3.0.0-M4/surefire-shared-utils-3.0.0-M4.pom";
      sha256 = "3cfb9c80f80ec190d4b5576da195ac4c43ea0a34656fc039a968e3a9f71bf7ac";
    };
  };
  dependencies = [
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
