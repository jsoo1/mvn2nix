{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_9_3
, org_apache_maven_surefire__surefire__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-shared-utils:pom:3.2.5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-shared-utils";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-shared-utils/3.2.5/surefire-shared-utils-3.2.5.pom";
      sha256 = "50c9a8000949fe14e72ed484847a6ec57174e6639b909244070f0ca24c6c6a32";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_9_3;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
