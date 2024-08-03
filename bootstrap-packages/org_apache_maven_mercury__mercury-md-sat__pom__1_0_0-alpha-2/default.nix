{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_mercury__mercury-md__pom__1_0_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven.mercury:mercury-md-sat:pom:1.0.0-alpha-2";
  groupId = "org.apache.maven.mercury";
  artifactId = "mercury-md-sat";
  version = "1.0.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/mercury/mercury-md-sat/1.0.0-alpha-2/mercury-md-sat-1.0.0-alpha-2.pom";
      sha256 = "41b70ff8ae975fbddce97b92083f365718ce1ba50df4b5814c163ed825349c62";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_mercury__mercury-md__pom__1_0_0-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
