{
  lib
, pkgs
, patchMavenJar
, org_ow2_asm__asm__9_7
, org_apache_maven__maven-parent__pom__42
, org_apache__apache__pom__32
, org_apache_maven_shared__maven-shared-components__pom__42
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-dependency-analyzer:1.14.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-dependency-analyzer";
  version = "1.14.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-dependency-analyzer/1.14.1/maven-dependency-analyzer-1.14.1.jar";
        sha256 = "88493689e519f1d2cee10d4e143d1001849c7d62db3746e98ce0c6f6facc4a2a";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-dependency-analyzer/1.14.1/maven-dependency-analyzer-1.14.1.pom";
        sha256 = "a9aa56c2a17b1b56c33ca829196e354771168e27b9c36beff26aeb46e5d38d26";
      };
    }
  ];
  dependencies = [
    {
      drv = org_ow2_asm__asm__9_7;
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
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
