{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.brotli:parent:pom:0.1.2";
  groupId = "org.brotli";
  artifactId = "parent";
  version = "0.1.2";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/brotli/parent/0.1.2/parent-0.1.2.pom";
        sha256 = "116f9d6632c13cd49c3f33337765075fcefa1ab911e9e2b7762736cad4a8f569";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
