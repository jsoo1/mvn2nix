{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_0_15
, org_apache_maven_wagon__wagon-provider-api__pom__2_10
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-provider-api:jar:2.10";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-provider-api";
  version = "2.10";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-provider-api/2.10/wagon-provider-api-2.10.jar";
      sha256 = "930b2e409513be03864d7a66e22dfdf5c086725e22ba3cf57ad45ed8af02996d";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_15;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-provider-api__pom__2_10;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
