{
  lib
, pkgs
, patchMavenJar
, org_sonatype_forge__forge-parent__pom__10
}:
patchMavenJar {
  name = "org.sonatype.sisu.inject:guava-parent:pom:0.9.9";
  groupId = "org.sonatype.sisu.inject";
  artifactId = "guava-parent";
  version = "0.9.9";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guava-parent/0.9.9/guava-parent-0.9.9.pom";
      sha256 = "cfc3507491767609fb2da36dcf32ebb0055b8bd32a2af182c021df9ecce26a76";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_forge__forge-parent__pom__10;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
