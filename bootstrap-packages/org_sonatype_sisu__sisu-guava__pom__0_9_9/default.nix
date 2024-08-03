{
  lib
, pkgs
, patchMavenJar
, org_sonatype_sisu_inject__guava-parent__pom__0_9_9
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-guava:pom:0.9.9";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-guava";
  version = "0.9.9";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-guava/0.9.9/sisu-guava-0.9.9.pom";
      sha256 = "2c007ed1e50e0edc62f8e3cdf725e1f61068206bc955aec48f3eb13a3467c6e5";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_sisu_inject__guava-parent__pom__0_9_9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
