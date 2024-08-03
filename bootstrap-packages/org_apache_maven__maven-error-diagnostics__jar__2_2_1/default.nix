{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-9-stable-1
, junit__junit__jar__3_8_1
, org_codehaus_plexus__plexus-utils__jar__1_5_15
, classworlds__classworlds__jar__1_1
, org_apache_maven__maven-error-diagnostics__pom__2_2_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-error-diagnostics:jar:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-error-diagnostics";
  version = "2.2.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-error-diagnostics/2.2.1/maven-error-diagnostics-2.2.1.jar";
      sha256 = "b3005544708f8583e455c22b09a4940596a057108bccdadb9db4d8e048091fed";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-9-stable-1;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_15;
      scope = "compile";
      optional = false;
    }
    {
      drv = classworlds__classworlds__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-error-diagnostics__pom__2_2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
