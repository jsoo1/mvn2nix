{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver-util__jar__1_9_18
, org_apache_maven_resolver__maven-resolver-api__jar__1_9_18
, org_codehaus_plexus__plexus-utils__jar__4_0_1
, org_codehaus_plexus__plexus-xml__jar__3_0_0
, org_apache_maven_plugins__maven-install-plugin__pom__3_1_2
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-install-plugin:jar:3.1.2";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-install-plugin";
  version = "3.1.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-install-plugin/3.1.2/maven-install-plugin-3.1.2.jar";
      sha256 = "3541e043252daf4e73b9e0e8badcc74a89bd6855419622d7739873fc9324feac";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_resolver__maven-resolver-util__jar__1_9_18;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-api__jar__1_9_18;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__4_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-xml__jar__3_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-install-plugin__pom__3_1_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
