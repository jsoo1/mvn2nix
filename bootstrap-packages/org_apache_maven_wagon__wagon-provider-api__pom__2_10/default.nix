{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_wagon__wagon__pom__2_10
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-provider-api:pom:2.10";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-provider-api";
  version = "2.10";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-provider-api/2.10/wagon-provider-api-2.10.pom";
      sha256 = "7296cc651bf159a9b83daa7dfd1ce08625c03d432b3967b4bfd899acb247dbe8";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_wagon__wagon__pom__2_10;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
