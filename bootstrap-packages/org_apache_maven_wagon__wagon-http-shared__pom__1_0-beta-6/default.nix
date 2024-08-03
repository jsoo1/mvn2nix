{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_wagon__wagon-providers__pom__1_0-beta-6
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-http-shared:pom:1.0-beta-6";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-http-shared";
  version = "1.0-beta-6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-http-shared/1.0-beta-6/wagon-http-shared-1.0-beta-6.pom";
      sha256 = "f6775dc981540ffa10f33bd831f14608517ce38b90628e045707dd5bb5d1348e";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_wagon__wagon-providers__pom__1_0-beta-6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
