{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_9_8
, org_apache_maven__maven-parent__pom__42
, org_apache__apache__pom__32
, org_codehaus_plexus__plexus-utils__3_5_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-repository-metadata:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-repository-metadata";
  version = "3.9.8";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-repository-metadata/3.9.8/maven-repository-metadata-3.9.8.jar";
        sha256 = "1f3f29a6bd8a35c92a6e3cbb5992be74863868fd962e90457c33d28af25472f2";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-repository-metadata/3.9.8/maven-repository-metadata-3.9.8.pom";
        sha256 = "47d638bcbfdb20e911919c955a15b54d9e59af72dd405cbcba48f78bcf7d03ab";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_9_8;
      scope = "test";
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
      drv = org_codehaus_plexus__plexus-utils__3_5_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
