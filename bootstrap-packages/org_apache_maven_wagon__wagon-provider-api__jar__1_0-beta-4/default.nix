{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__1_4_2
, org_apache_maven_wagon__wagon-provider-api__pom__1_0-beta-4
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-provider-api:jar:1.0-beta-4";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-provider-api";
  version = "1.0-beta-4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-provider-api/1.0-beta-4/wagon-provider-api-1.0-beta-4.jar";
      sha256 = "6a82569576cda4cae793800ed2985202de8a59e414d2140e217cf077709e7bbb";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-provider-api__pom__1_0-beta-4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
