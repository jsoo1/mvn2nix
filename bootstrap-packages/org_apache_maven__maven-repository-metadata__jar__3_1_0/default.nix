{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_0_10
, org_apache_maven__maven-repository-metadata__pom__3_1_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-repository-metadata:jar:3.1.0";
  groupId = "org.apache.maven";
  artifactId = "maven-repository-metadata";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-repository-metadata/3.1.0/maven-repository-metadata-3.1.0.jar";
      sha256 = "1f98b8b101fea1167d3d5dfd6439757bd96f79e62388323af258fddc1e60382e";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_10;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__pom__3_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
