{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__22
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-io:pom:3.0.0";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-io";
  version = "3.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-io/3.0.0/maven-shared-io-3.0.0.pom";
      sha256 = "028d029948d0c83ca090173d1e31537f481beada8b1f138b71aed454978db89c";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__22;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
