{
  lib
, pkgs
, patchMavenJar
, org_sonatype_sisu_inject__guice-plexus__pom__1_4_2
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-inject-plexus:pom:1.4.2";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-inject-plexus";
  version = "1.4.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-inject-plexus/1.4.2/sisu-inject-plexus-1.4.2.pom";
      sha256 = "e302200cf462cf1af9f3e870738253cdf90d7abc8279b9d3b507a5d0d3b9f289";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_sisu_inject__guice-plexus__pom__1_4_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
