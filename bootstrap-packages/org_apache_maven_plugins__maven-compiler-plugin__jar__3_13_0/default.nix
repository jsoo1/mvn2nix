{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-utils__jar__3_4_2
, org_slf4j__slf4j-api__jar__1_7_36
, commons-io__commons-io__jar__2_11_0
, org_apache_maven_shared__maven-shared-incremental__jar__1_1
, org_codehaus_plexus__plexus-java__jar__1_2_0
, org_ow2_asm__asm__jar__9_6
, com_thoughtworks_qdox__qdox__jar__2_0_3
, org_codehaus_plexus__plexus-compiler-api__jar__2_15_0
, org_codehaus_plexus__plexus-compiler-manager__jar__2_15_0
, javax_inject__javax_inject__jar__1
, org_codehaus_plexus__plexus-xml__jar__3_0_0
, org_codehaus_plexus__plexus-compiler-javac__jar__2_15_0
, org_codehaus_plexus__plexus-utils__jar__4_0_0
, org_apache_maven_plugins__maven-compiler-plugin__pom__3_13_0
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-compiler-plugin:jar:3.13.0";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-compiler-plugin";
  version = "3.13.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-compiler-plugin/3.13.0/maven-compiler-plugin-3.13.0.jar";
      sha256 = "6f819947a2a773792dc91d17f906e22113bfb2fefb6b64dec836175715d7402a";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-utils__jar__3_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_11_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-incremental__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-java__jar__1_2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_ow2_asm__asm__jar__9_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_thoughtworks_qdox__qdox__jar__2_0_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-compiler-api__jar__2_15_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-compiler-manager__jar__2_15_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-xml__jar__3_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-compiler-javac__jar__2_15_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__4_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-compiler-plugin__pom__3_13_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
