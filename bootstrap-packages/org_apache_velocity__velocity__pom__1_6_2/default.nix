{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__4
}:
patchMavenJar {
  name = "org.apache.velocity:velocity:pom:1.6.2";
  groupId = "org.apache.velocity";
  artifactId = "velocity";
  version = "1.6.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/velocity/velocity/1.6.2/velocity-1.6.2.pom";
      sha256 = "f663422e0b92069dcb30d58a2652660b727252ae94e40e8616e710723c64cdec";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
