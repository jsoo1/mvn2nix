{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__29
}:
patchMavenJar {
  name = "org.apache.commons:commons-parent:pom:56";
  groupId = "org.apache.commons";
  artifactId = "commons-parent";
  version = "56";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-parent/56/commons-parent-56.pom";
        sha256 = "560c7051ddc768e1372e4087970764e4c013903c5dc6eb52c29877370dae2694";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__29;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
