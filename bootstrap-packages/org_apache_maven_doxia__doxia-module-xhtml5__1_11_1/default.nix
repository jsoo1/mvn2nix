{
  lib
, pkgs
, patchMavenJar
, org_apache_httpcomponents__httpclient__4_5_13
, org_codehaus_plexus__plexus-classworlds__2_6_0
, org_apache_maven_doxia__doxia-sink-api__1_11_1
, org_apache_commons__commons-lang3__3_8_1
, org_apache_commons__commons-text__1_3
, commons-codec__commons-codec__1_11
, org_apache_maven_doxia__doxia__pom__1_11_1
, com_google_collections__google-collections__1_0
, org_apache_httpcomponents__httpcore__4_4_14
, org_codehaus_plexus__plexus-component-annotations__2_1_0
, commons-logging__commons-logging__1_2
, org_apache_maven_doxia__doxia-core__1_11_1
, org_apache_xbean__xbean-reflect__3_7
, org_apache_maven__maven-parent__pom__34
, org_apache_maven_doxia__doxia-logging-api__1_11_1
, org_apache_maven_doxia__doxia-modules__pom__1_11_1
, org_codehaus_plexus__plexus-container-default__2_1_0
, org_codehaus_plexus__plexus-utils__3_3_0
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-module-xhtml5:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-module-xhtml5";
  version = "1.11.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-module-xhtml5/1.11.1/doxia-module-xhtml5-1.11.1.jar";
        sha256 = "3583ae17f9ae97db41da038dc67552a386e7a9f850f45fa6fdb0d2b9ef36a31c";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-module-xhtml5/1.11.1/doxia-module-xhtml5-1.11.1.pom";
        sha256 = "a322ee9d8b5b300f337994c710be006dd8b05f2d83e07a9bef64c2530ac9282b";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_httpcomponents__httpclient__4_5_13;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__2_6_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-sink-api__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-lang3__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-text__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__1_11;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia__pom__1_11_1;
      scope = "test";
      optional = false;
    }
    {
      drv = com_google_collections__google-collections__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_httpcomponents__httpcore__4_4_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__2_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-core__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_xbean__xbean-reflect__3_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__34;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-logging-api__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-modules__pom__1_11_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__2_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__23;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
