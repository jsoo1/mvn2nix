{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire-shared-utils__pom__3_0_0-M4
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-shared-utils:jar:3.0.0-M4";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-shared-utils";
  version = "3.0.0-M4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-shared-utils/3.0.0-M4/surefire-shared-utils-3.0.0-M4.jar";
      sha256 = "90574246a32a6d6d85e484bf075eb47bd5344581dc8496128b67527d2d28cd0d";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_surefire__surefire-shared-utils__pom__3_0_0-M4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
