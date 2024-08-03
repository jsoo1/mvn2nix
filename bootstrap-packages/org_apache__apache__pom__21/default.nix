{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:21";
  groupId = "org.apache";
  artifactId = "apache";
  version = "21";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/apache/21/apache-21.pom";
      sha256 = "af10c108da014f17cafac7b52b2b4b5a3a1c18265fa2af97a325d9143537b380";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
