{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:9";
  groupId = "org.apache";
  artifactId = "apache";
  version = "9";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/apache/9/apache-9.pom";
        sha256 = "4946e60a547c8eda69f3bc23c5b6f0dadcf8469ea49b1d1da7de34aecfcf18dd";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
