{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_9_8
, org_apache_maven__maven-parent__pom__42
, org_apache__apache__pom__32
}:
patchMavenJar {
  name = "org.apache.maven:maven-builder-support:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-builder-support";
  version = "3.9.8";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-builder-support/3.9.8/maven-builder-support-3.9.8.jar";
        sha256 = "70103cdd84a039a620fb37ffb6f8c689f490af5c5dc5f11cbc15adc515a62e74";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-builder-support/3.9.8/maven-builder-support-3.9.8.pom";
        sha256 = "53e1f3697b446c99f12aa06bc151575308a98581fe360843e77737ef7893fc57";
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
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
