{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_0_20
, org_apache_maven__maven-artifact__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven:maven-artifact:jar:3.2.5";
  groupId = "org.apache.maven";
  artifactId = "maven-artifact";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-artifact/3.2.5/maven-artifact-3.2.5.jar";
      sha256 = "270385907ecfbcb256fe5afb883869fd57a5c021b5242693743ef787605c6335";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
