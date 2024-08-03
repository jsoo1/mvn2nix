{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver-api__jar__1_9_20
, org_apache_maven_resolver__maven-resolver-spi__pom__1_9_20
}:
patchMavenJar {
  name = "org.apache.maven.resolver:maven-resolver-spi:jar:1.9.20";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver-spi";
  version = "1.9.20";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-spi/1.9.20/maven-resolver-spi-1.9.20.jar";
      sha256 = "04c3c41454298dff4f42ad2b69d5b18e74c3c9a329b4f501d717e157d56ebd11";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_resolver__maven-resolver-api__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-spi__pom__1_9_20;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
