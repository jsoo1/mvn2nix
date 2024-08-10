{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__37
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-common-artifact-filters:pom:3.3.2";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-common-artifact-filters";
  version = "3.3.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-common-artifact-filters/3.3.2/maven-common-artifact-filters-3.3.2.pom";
      sha256 = "214677844a23cf33f09f58ecd29dec08dd005ffa4e20381b4b5c56059236a237";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__37;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
