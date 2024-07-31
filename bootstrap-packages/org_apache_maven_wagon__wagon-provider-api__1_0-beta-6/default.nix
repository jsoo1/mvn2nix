{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_wagon__wagon__pom__1_0-beta-6
, org_codehaus_plexus__plexus-utils__1_4_2
, org_apache__apache__pom__5
, org_apache_maven__maven-parent__pom__11
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-provider-api:1.0-beta-6";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-provider-api";
  version = "1.0-beta-6";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-provider-api/1.0-beta-6/wagon-provider-api-1.0-beta-6.jar";
        sha256 = "e116f32edcb77067289a3148143f2c0c97b27cf9a1342f8108ee37dec4868861";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-provider-api/1.0-beta-6/wagon-provider-api-1.0-beta-6.pom";
        sha256 = "85c3c8840bb21554faf159998146f7ca9ef1b951defb29ec4e8252ec463728fd";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_wagon__wagon__pom__1_0-beta-6;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__11;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
