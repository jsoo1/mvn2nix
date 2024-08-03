{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire-shared-utils__jar__3_2_5
, org_apache_maven_surefire__surefire-extensions-api__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-extensions-api:jar:3.2.5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-extensions-api";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-extensions-api/3.2.5/surefire-extensions-api-3.2.5.jar";
      sha256 = "549cfb25613c0756d23ab15227f30f0f290af359fc2d21b4123f40c440b34209";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_surefire__surefire-shared-utils__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-extensions-api__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
