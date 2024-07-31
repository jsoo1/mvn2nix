{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_wagon__wagon__pom__2_10
, org_apache__apache__pom__16
, org_codehaus_plexus__plexus-utils__3_0_15
, org_apache_maven__maven-parent__pom__26
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-provider-api:2.10";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-provider-api";
  version = "2.10";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-provider-api/2.10/wagon-provider-api-2.10.jar";
        sha256 = "930b2e409513be03864d7a66e22dfdf5c086725e22ba3cf57ad45ed8af02996d";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-provider-api/2.10/wagon-provider-api-2.10.pom";
        sha256 = "7296cc651bf159a9b83daa7dfd1ce08625c03d432b3967b4bfd899acb247dbe8";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_wagon__wagon__pom__2_10;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__16;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_0_15;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__26;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
