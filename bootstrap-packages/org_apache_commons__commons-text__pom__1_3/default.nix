{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-parent__pom__45
}:
patchMavenJar {
  name = "org.apache.commons:commons-text:pom:1.3";
  groupId = "org.apache.commons";
  artifactId = "commons-text";
  version = "1.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-text/1.3/commons-text-1.3.pom";
      sha256 = "deeb2ba9701e495dc31d32633eb86b94b24b0a96e0dc67fb87e7062f153027aa";
    };
  };
  dependencies = [
    {
      drv = org_apache_commons__commons-parent__pom__45;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
