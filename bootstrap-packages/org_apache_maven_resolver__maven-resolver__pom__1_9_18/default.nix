{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__41
}:
patchMavenJar {
  name = "org.apache.maven.resolver:maven-resolver:pom:1.9.18";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver";
  version = "1.9.18";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver/1.9.18/maven-resolver-1.9.18.pom";
      sha256 = "fb1dd4e554cd2dbcede9615294921e70b183533f467913acd9a3787ffdd6943b";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__41;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
