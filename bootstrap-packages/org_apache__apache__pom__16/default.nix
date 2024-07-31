{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:16";
  groupId = "org.apache";
  artifactId = "apache";
  version = "16";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/apache/16/apache-16.pom";
        sha256 = "9f85ff2fd7d6cb3097aa47fb419ee7f0ebe869109f98aba9f4eca3f49e74a40e";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
