{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_mercury__mercury__pom__1_0_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven.mercury:mercury-repo:pom:1.0.0-alpha-2";
  groupId = "org.apache.maven.mercury";
  artifactId = "mercury-repo";
  version = "1.0.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/mercury/mercury-repo/1.0.0-alpha-2/mercury-repo-1.0.0-alpha-2.pom";
      sha256 = "f4023596f2f155c68faf2c169cd9c75d3e6416ed943b9718bf2bee2e8803cb92";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_mercury__mercury__pom__1_0_0-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
