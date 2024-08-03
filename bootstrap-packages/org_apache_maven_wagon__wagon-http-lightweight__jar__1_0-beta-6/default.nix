{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_wagon__wagon-http-shared__jar__1_0-beta-6
, nekohtml__xercesMinimal__jar__1_9_6_2
, nekohtml__nekohtml__jar__1_9_6_2
, org_apache_maven_wagon__wagon-provider-api__jar__1_0-beta-6
, org_codehaus_plexus__plexus-utils__jar__1_4_2
, org_apache_maven_wagon__wagon-http-lightweight__pom__1_0-beta-6
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-http-lightweight:jar:1.0-beta-6";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-http-lightweight";
  version = "1.0-beta-6";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-http-lightweight/1.0-beta-6/wagon-http-lightweight-1.0-beta-6.jar";
      sha256 = "be214032de23c6b520b79c1ccdb160948e0c67ed7c11984b7ec4ca5537867b4e";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_wagon__wagon-http-shared__jar__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = nekohtml__xercesMinimal__jar__1_9_6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = nekohtml__nekohtml__jar__1_9_6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-provider-api__jar__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-http-lightweight__pom__1_0-beta-6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
