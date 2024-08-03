{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-builder-support__pom__3_9_8
}:
patchMavenJar {
  name = "org.apache.maven:maven-builder-support:jar:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-builder-support";
  version = "3.9.8";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-builder-support/3.9.8/maven-builder-support-3.9.8.jar";
      sha256 = "70103cdd84a039a620fb37ffb6f8c689f490af5c5dc5f11cbc15adc515a62e74";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-builder-support__pom__3_9_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
