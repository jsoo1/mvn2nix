{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__4
}:
patchMavenJar {
  name = "org.apache.velocity:velocity:pom:1.7";
  groupId = "org.apache.velocity";
  artifactId = "velocity";
  version = "1.7";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/velocity/velocity/1.7/velocity-1.7.pom";
      sha256 = "a3f97ceab5f073ed93ef8fe6304e35252d83ecf2442c83fe0492b8b73da3b40b";
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
