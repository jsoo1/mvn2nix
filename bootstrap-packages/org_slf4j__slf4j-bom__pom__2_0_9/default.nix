{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.slf4j:slf4j-bom:pom:2.0.9";
  groupId = "org.slf4j";
  artifactId = "slf4j-bom";
  version = "2.0.9";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-bom/2.0.9/slf4j-bom-2.0.9.pom";
        sha256 = "eaef4584807d812c6a0b6cf839d5e47f50c754327719b9ce081e271d15da6243";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
