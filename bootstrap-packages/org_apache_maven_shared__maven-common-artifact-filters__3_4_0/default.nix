{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__1_7_36
, org_apache_maven_resolver__maven-resolver-util__1_4_1
, org_apache_maven__maven-parent__pom__42
, org_apache__apache__pom__32
, org_apache_maven_shared__maven-shared-components__pom__42
, org_apache_maven_resolver__maven-resolver-api__1_4_1
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-common-artifact-filters:3.4.0";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-common-artifact-filters";
  version = "3.4.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-common-artifact-filters/3.4.0/maven-common-artifact-filters-3.4.0.jar";
        sha256 = "931a77aa9dad6c91f10fcfafa70adc7608c004576b4924c74ecbffb27568a880";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-common-artifact-filters/3.4.0/maven-common-artifact-filters-3.4.0.pom";
        sha256 = "c93581d69b337c1fcc0957c727c430180b6387276ef1d3c2976c175e93765eb1";
      };
    }
  ];
  dependencies = [
    {
      drv = org_slf4j__slf4j-api__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-util__1_4_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__42;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__32;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__42;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-api__1_4_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
