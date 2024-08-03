{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_0_20
, org_apache_maven__maven-repository-metadata__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven:maven-repository-metadata:jar:3.2.5";
  groupId = "org.apache.maven";
  artifactId = "maven-repository-metadata";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-repository-metadata/3.2.5/maven-repository-metadata-3.2.5.jar";
      sha256 = "62b517b77f24edebdee0e382ecddb44bb6632b7c08c528d625aed7d2980df12b";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
