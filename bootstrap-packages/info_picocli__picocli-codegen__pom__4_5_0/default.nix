{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "info.picocli:picocli-codegen:pom:4.5.0";
  groupId = "info.picocli";
  artifactId = "picocli-codegen";
  version = "4.5.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/info/picocli/picocli-codegen/4.5.0/picocli-codegen-4.5.0.pom";
      sha256 = "3ec7645051f760ba52970bbc889d70faa670e3bc145aee61faf1c885a381550e";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
