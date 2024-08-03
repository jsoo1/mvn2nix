{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_mercury__mercury-util__pom__1_0_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven.mercury:mercury-util:jar:1.0.0-alpha-2";
  groupId = "org.apache.maven.mercury";
  artifactId = "mercury-util";
  version = "1.0.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/mercury/mercury-util/1.0.0-alpha-2/mercury-util-1.0.0-alpha-2.jar";
      sha256 = "266bd7e1e2089cd99ad8ac0d02b9b942a12e4f94330fb8b6d8a98a8acb88efb7";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_mercury__mercury-util__pom__1_0_0-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
