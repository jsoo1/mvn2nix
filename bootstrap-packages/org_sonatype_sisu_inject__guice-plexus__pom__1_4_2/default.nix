{
  lib
, pkgs
, patchMavenJar
, org_sonatype_sisu_inject__guice-bean__pom__1_4_2
}:
patchMavenJar {
  name = "org.sonatype.sisu.inject:guice-plexus:pom:1.4.2";
  groupId = "org.sonatype.sisu.inject";
  artifactId = "guice-plexus";
  version = "1.4.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guice-plexus/1.4.2/guice-plexus-1.4.2.pom";
      sha256 = "13a66ca6e6ad1a186076513eea822db2c3c0e460a983a0a31f4d937de336ad98";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_sisu_inject__guice-bean__pom__1_4_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
