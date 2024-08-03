{
  lib
, pkgs
, patchMavenJar
, org_sonatype_forge__forge-parent__pom__38
}:
patchMavenJar {
  name = "org.sonatype.sisu.inject:guice-parent:pom:3.2.3";
  groupId = "org.sonatype.sisu.inject";
  artifactId = "guice-parent";
  version = "3.2.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guice-parent/3.2.3/guice-parent-3.2.3.pom";
      sha256 = "5aa8d98b590478df88a349bd1dbe11d0620bfe2bdf11c4e52d51b27fe31d6168";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_forge__forge-parent__pom__38;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
