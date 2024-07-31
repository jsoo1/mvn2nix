{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "eu.neilalexander:jnacl:1.0.0";
  groupId = "eu.neilalexander";
  artifactId = "jnacl";
  version = "1.0.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/eu/neilalexander/jnacl/1.0.0/jnacl-1.0.0.jar";
        sha256 = "4accc9d2a56a6dd5198ec5e1c5c05a091da563bccd346fd6578edc083152beaa";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/eu/neilalexander/jnacl/1.0.0/jnacl-1.0.0.pom";
        sha256 = "76b4a485a8c4c4f35d6d1c6af89c15cd8c3ad4f65671bd191ab822fefeba4147";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
