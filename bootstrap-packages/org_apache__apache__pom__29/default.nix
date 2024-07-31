{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:29";
  groupId = "org.apache";
  artifactId = "apache";
  version = "29";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/apache/29/apache-29.pom";
        sha256 = "3e49037174820bbd0df63420a977255886398954c2a06291fa61f727ac35b377";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
