{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__1_5_15
, org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-9-stable-1
, junit__junit__jar__3_8_1
, classworlds__classworlds__jar__1_1
, org_apache_maven__maven-plugin-parameter-documenter__pom__2_2_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-plugin-parameter-documenter:jar:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-plugin-parameter-documenter";
  version = "2.2.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-parameter-documenter/2.2.1/maven-plugin-parameter-documenter-2.2.1.jar";
      sha256 = "d87645908695bd18375b77b9149741a9309521f9e13a872d5aa6bcdf361d0226";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_15;
      scope = "compile";
      optional = false;
    }
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
      drv = classworlds__classworlds__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-parameter-documenter__pom__2_2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
