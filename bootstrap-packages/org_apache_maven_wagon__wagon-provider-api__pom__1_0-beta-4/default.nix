{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_wagon__wagon__pom__1_0-beta-4
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-provider-api:pom:1.0-beta-4";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-provider-api";
  version = "1.0-beta-4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-provider-api/1.0-beta-4/wagon-provider-api-1.0-beta-4.pom";
      sha256 = "1739331652c6e93dd3305a9c5b33f493c85782171e9e8a3e0c750b030dabadd1";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_wagon__wagon__pom__1_0-beta-4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
