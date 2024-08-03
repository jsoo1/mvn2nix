{
  lib
, pkgs
, patchMavenJar
, org_sonatype_forge__forge-parent__pom__31
}:
patchMavenJar {
  name = "org.sonatype.sisu.inject:guice-parent:pom:3.1.3";
  groupId = "org.sonatype.sisu.inject";
  artifactId = "guice-parent";
  version = "3.1.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guice-parent/3.1.3/guice-parent-3.1.3.pom";
      sha256 = "206aaff8fb8a51a280457574cb74ff962fc08ba54c8edab251fbc7c73d5eca63";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_forge__forge-parent__pom__31;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
