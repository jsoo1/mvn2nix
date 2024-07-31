{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__6
}:
patchMavenJar {
  name = "org.apache.geronimo.genesis:genesis:pom:2.0";
  groupId = "org.apache.geronimo.genesis";
  artifactId = "genesis";
  version = "2.0";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/geronimo/genesis/genesis/2.0/genesis-2.0.pom";
        sha256 = "b9ed2f9dd434631158d77308ee5648622c229ccece1722c5e377a4296923dae6";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
