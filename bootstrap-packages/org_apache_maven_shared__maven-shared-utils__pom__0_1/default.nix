{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__18
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-utils:pom:0.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "0.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/0.1/maven-shared-utils-0.1.pom";
      sha256 = "9ecb36b0e0d7d1d0f0dabd8705368b710df58b943091e9fa9071a29ccdc15a33";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__18;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
