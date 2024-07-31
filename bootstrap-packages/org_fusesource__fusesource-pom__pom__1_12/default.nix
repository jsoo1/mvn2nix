{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.fusesource:fusesource-pom:pom:1.12";
  groupId = "org.fusesource";
  artifactId = "fusesource-pom";
  version = "1.12";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/fusesource/fusesource-pom/1.12/fusesource-pom-1.12.pom";
        sha256 = "c40d960daadcef7b01c1b1c6657afbac4fffb5e53168f8fcb0b28b84e6fdcca1";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
