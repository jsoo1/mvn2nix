{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:5";
  groupId = "org.apache";
  artifactId = "apache";
  version = "5";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/apache/5/apache-5.pom";
        sha256 = "1933a6037439b389bda2feaccfc0113880fd8d88f7d240d2052b91108dd5ae89";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
