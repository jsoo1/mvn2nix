{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "assertj-bom";
  coordinates = "org.assertj:assertj-bom:pom:3.25.3";
  groupId = "org.assertj";
  artifactId = "assertj-bom";
  version = "3.25.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/assertj/assertj-bom/3.25.3/assertj-bom-3.25.3.pom";
      sha256 = "91b7a19b77af5462c7290b91ac7c72c44d6483afea0b62536816e98f8d53f257";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
