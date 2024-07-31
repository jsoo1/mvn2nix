{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:18";
  groupId = "org.apache";
  artifactId = "apache";
  version = "18";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/apache/18/apache-18.pom";
        sha256 = "7831307285fd475bbc36b20ae38e7882f11c3153b1d5930f852d44eda8f33c17";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
