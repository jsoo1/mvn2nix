{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__1_5_15
, org_apache_maven__maven-repository-metadata__pom__2_2_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-repository-metadata:jar:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-repository-metadata";
  version = "2.2.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-repository-metadata/2.2.1/maven-repository-metadata-2.2.1.jar";
      sha256 = "5fe283f47b0e7f7d95a4252af3fa7a0db4d8f080cd9df308608c0472b8f168a1";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_15;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__pom__2_2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
