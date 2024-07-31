{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:27";
  groupId = "org.apache";
  artifactId = "apache";
  version = "27";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/apache/27/apache-27.pom";
        sha256 = "b2b0fc69e22a650c3892f1c366d77076f29575c6738df4c7a70a44844484cdf9";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
