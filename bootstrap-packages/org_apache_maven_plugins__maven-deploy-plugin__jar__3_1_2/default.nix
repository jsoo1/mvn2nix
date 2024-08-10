{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__4_0_1
, org_codehaus_plexus__plexus-xml__jar__3_0_0
, org_apache_maven_resolver__maven-resolver-util__jar__1_9_18
, org_apache_maven_resolver__maven-resolver-api__jar__1_9_18
, org_apache_maven_plugins__maven-deploy-plugin__pom__3_1_2
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-deploy-plugin:jar:3.1.2";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-deploy-plugin";
  version = "3.1.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-deploy-plugin/3.1.2/maven-deploy-plugin-3.1.2.jar";
      sha256 = "cb3850b77fb0b4ee9330a22fee7c9a73e8036b8a532363147cdf4986c890d7f9";
    };
  };
  dependencies = [
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
      drv = org_apache_maven_plugins__maven-deploy-plugin__pom__3_1_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
