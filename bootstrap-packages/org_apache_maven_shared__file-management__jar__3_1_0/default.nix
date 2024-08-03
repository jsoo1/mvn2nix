{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__jar__1_7_36
, org_codehaus_plexus__plexus-utils__jar__3_4_2
, commons-io__commons-io__jar__2_11_0
, org_apache_maven_shared__file-management__pom__3_1_0
}:
patchMavenJar {
  name = "org.apache.maven.shared:file-management:jar:3.1.0";
  groupId = "org.apache.maven.shared";
  artifactId = "file-management";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/file-management/3.1.0/file-management-3.1.0.jar";
      sha256 = "2e8cb2d546a01c2259cb17f1e06732db3d14b079d19622bf8400c82cb1ee6b96";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-api__jar__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_11_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__file-management__pom__3_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
