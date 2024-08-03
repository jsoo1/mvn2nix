{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-model__jar__2_2_1
, org_codehaus_plexus__plexus-utils__jar__1_5_15
, org_codehaus_plexus__plexus-interpolation__jar__1_11
, org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-9-stable-1
, junit__junit__jar__3_8_1
, classworlds__classworlds__jar__1_1
, org_apache_maven__maven-profile__pom__2_2_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-profile:jar:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-profile";
  version = "2.2.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-profile/2.2.1/maven-profile-2.2.1.jar";
      sha256 = "ecaffef655fea6b138f0855a12f7dbb59fc0d6bffb5c1bfd31803cccb49ea08c";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-model__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_15;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_11;
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
      drv = org_apache_maven__maven-profile__pom__2_2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
