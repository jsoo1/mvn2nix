{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__jar__1_7_36
, org_apache_maven_shared__maven-common-artifact-filters__pom__3_3_2
}:
patchMavenJar {
  name = "maven-common-artifact-filters";
  coordinates = "org.apache.maven.shared:maven-common-artifact-filters:jar:3.3.2";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-common-artifact-filters";
  version = "3.3.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-common-artifact-filters/3.3.2/maven-common-artifact-filters-3.3.2.jar";
      sha256 = "2be8b810cf0937ff4bb7bef8ce78a8faad17ca2182751055ac7df54d5510b908";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-api__jar__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-common-artifact-filters__pom__3_3_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
