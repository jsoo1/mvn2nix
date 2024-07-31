{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:23";
  groupId = "org.apache";
  artifactId = "apache";
  version = "23";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/apache/23/apache-23.pom";
        sha256 = "bc10624e0623f36577fac5639ca2936d3240ed152fb6d8d533ab4d270543491c";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
