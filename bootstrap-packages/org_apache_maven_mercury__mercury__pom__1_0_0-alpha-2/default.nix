{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__9
}:
patchMavenJar {
  name = "org.apache.maven.mercury:mercury:pom:1.0.0-alpha-2";
  groupId = "org.apache.maven.mercury";
  artifactId = "mercury";
  version = "1.0.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/mercury/mercury/1.0.0-alpha-2/mercury-1.0.0-alpha-2.pom";
      sha256 = "63de9a32ff5a9ad8386d41ffedc5356d1c46064dd75bd4a1e44480302105ff66";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
