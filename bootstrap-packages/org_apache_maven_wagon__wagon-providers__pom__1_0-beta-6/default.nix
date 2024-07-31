{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_wagon__wagon__pom__1_0-beta-6
, org_apache_maven_wagon__wagon-provider-api__1_0-beta-6
, org_codehaus_plexus__plexus-utils__1_4_2
, org_apache__apache__pom__5
, org_apache_maven__maven-parent__pom__11
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-providers:pom:1.0-beta-6";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-providers";
  version = "1.0-beta-6";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-providers/1.0-beta-6/wagon-providers-1.0-beta-6.pom";
        sha256 = "340422be8f3e3c847a0a0bf944296774f6db81f2fa8b34912bc931a112a26919";
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
      drv = org_apache_maven_wagon__wagon-provider-api__1_0-beta-6;
      scope = "compile";
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
