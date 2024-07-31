{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:17";
  groupId = "org.apache";
  artifactId = "apache";
  version = "17";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/apache/17/apache-17.pom";
        sha256 = "398044b74b5a719326be218ae08124e5e2f3318ab5d78fe199d504efc2e0d43f";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
