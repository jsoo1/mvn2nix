{
  lib
, pkgs
, patchMavenJar
, org_sonatype_sisu__sisu-inject__pom__1_4_2
}:
patchMavenJar {
  name = "org.sonatype.sisu.inject:guice-bean:pom:1.4.2";
  groupId = "org.sonatype.sisu.inject";
  artifactId = "guice-bean";
  version = "1.4.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guice-bean/1.4.2/guice-bean-1.4.2.pom";
      sha256 = "d2ee7efbcdc82206c69559548aef86a99add95378f03cc58b4d9696b3969c8bb";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_sisu__sisu-inject__pom__1_4_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
