{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-30
, org_codehaus_plexus__plexus-utils__jar__1_5_7
, org_codehaus_plexus__plexus-classworlds__jar__1_2-alpha-9
, junit__junit__jar__3_8_1
, org_apache_maven_doxia__doxia-logging-api__pom__1_1
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-logging-api:jar:1.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-logging-api";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-logging-api/1.1/doxia-logging-api-1.1.jar";
      sha256 = "80f1b67a2f698f0e8dd11e5cedfc28c5b8e6fb2986adf939bfa04d92d9367d66";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-30;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__1_2-alpha-9;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-logging-api__pom__1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
