{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:4";
  groupId = "org.apache";
  artifactId = "apache";
  version = "4";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/apache/4/apache-4.pom";
        sha256 = "9e9323a26ba8eb2394efef0c96d31b70df570808630dc147cab1e73541cc5194";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
