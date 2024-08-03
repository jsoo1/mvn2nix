{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__2_0_4
, org_apache_maven__maven-artifact__pom__3_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-artifact:jar:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven-artifact";
  version = "3.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-artifact/3.0/maven-artifact-3.0.jar";
      sha256 = "759079b9cf0cddae5ba06c96fd72347d82d0bc1d903c95d398c96522b139e470";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__2_0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__pom__3_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
