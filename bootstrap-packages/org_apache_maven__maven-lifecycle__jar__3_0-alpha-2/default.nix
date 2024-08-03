{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__1_5_6
, org_apache_maven__maven-lifecycle__pom__3_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven:maven-lifecycle:jar:3.0-alpha-2";
  groupId = "org.apache.maven";
  artifactId = "maven-lifecycle";
  version = "3.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-lifecycle/3.0-alpha-2/maven-lifecycle-3.0-alpha-2.jar";
      sha256 = "7b01e0a0a62e561639c0d7ce2d659be97077cadbd2cc38f34247913f60e169b6";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-lifecycle__pom__3_0-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
