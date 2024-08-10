{
  lib
, pkgs
, patchMavenJar
, org_ow2_asm__asm__jar__9_7
, org_apache_maven_shared__maven-dependency-analyzer__pom__1_14_1
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-dependency-analyzer:jar:1.14.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-dependency-analyzer";
  version = "1.14.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-dependency-analyzer/1.14.1/maven-dependency-analyzer-1.14.1.jar";
      sha256 = "88493689e519f1d2cee10d4e143d1001849c7d62db3746e98ce0c6f6facc4a2a";
    };
  };
  dependencies = [
    {
      drv = org_ow2_asm__asm__jar__9_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-dependency-analyzer__pom__1_14_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
