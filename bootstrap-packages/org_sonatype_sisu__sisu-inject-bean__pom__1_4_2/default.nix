{
  lib
, pkgs
, patchMavenJar
, org_sonatype_sisu_inject__guice-bean__pom__1_4_2
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-inject-bean:pom:1.4.2";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-inject-bean";
  version = "1.4.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-inject-bean/1.4.2/sisu-inject-bean-1.4.2.pom";
      sha256 = "06d75dd6f2a0dc9ea6bf73a67491ba4790f92251c654bf4925511e5e4f48f1df";
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
