{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, org_apache_maven__maven-artifact__pom__3_9_8
}:
patchMavenJar {
  name = "org.apache.maven:maven-artifact:jar:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-artifact";
  version = "3.9.8";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-artifact/3.9.8/maven-artifact-3.9.8.jar";
      sha256 = "5e2f3cda004182fc815d48b70bc0d144cb128230a841dc711357d57c76c95972";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__pom__3_9_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
