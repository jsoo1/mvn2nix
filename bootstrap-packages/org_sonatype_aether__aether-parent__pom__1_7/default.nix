{
  lib
, pkgs
, patchMavenJar
, org_sonatype_forge__forge-parent__pom__6
}:
patchMavenJar {
  name = "org.sonatype.aether:aether-parent:pom:1.7";
  groupId = "org.sonatype.aether";
  artifactId = "aether-parent";
  version = "1.7";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/aether/aether-parent/1.7/aether-parent-1.7.pom";
        sha256 = "29004012161043936443d59574924e0406a2326f53943f02eca7944b33c169df";
      };
    }
  ];
  dependencies = [
    {
      drv = org_sonatype_forge__forge-parent__pom__6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
