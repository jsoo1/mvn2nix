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
  name = "org.apache.maven:maven-artifact:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-artifact";
  version = "3.9.8";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-artifact/3.9.8/maven-artifact-3.9.8.jar";
        sha256 = "5e2f3cda004182fc815d48b70bc0d144cb128230a841dc711357d57c76c95972";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-artifact/3.9.8/maven-artifact-3.9.8.pom";
        sha256 = "7ff69555cd2cf92a41cecd936a83a7247e46c188f432ab62f435b28dcd02010a";
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
