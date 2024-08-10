{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.jdom:jdom2:pom:2.0.6.1";
  groupId = "org.jdom";
  artifactId = "jdom2";
  version = "2.0.6.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/jdom/jdom2/2.0.6.1/jdom2-2.0.6.1.pom";
      sha256 = "55795e1018b8ae647b937967cf810a99b08582c2374e7873c128734c8c914bf3";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
