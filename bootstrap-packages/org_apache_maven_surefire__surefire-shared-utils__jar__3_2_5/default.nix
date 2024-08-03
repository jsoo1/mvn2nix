{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire-shared-utils__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-shared-utils:jar:3.2.5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-shared-utils";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-shared-utils/3.2.5/surefire-shared-utils-3.2.5.jar";
      sha256 = "edbbbe4e9feee89b864e02cfc377963af6a3d6c3f0b7d860ebf99778d6886579";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_surefire__surefire-shared-utils__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
