{
  lib
, pkgs
, patchMavenJar
, org_sonatype_sisu__sisu-parent__pom__1_4_2
, org_sonatype_forge__forge-parent__pom__6
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-inject:pom:1.4.2";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-inject";
  version = "1.4.2";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-inject/1.4.2/sisu-inject-1.4.2.pom";
        sha256 = "a5991ead85259ba9f8c985d194aace3b069e14bcd8cde68fce928223714d3968";
      };
    }
  ];
  dependencies = [
    {
      drv = org_sonatype_sisu__sisu-parent__pom__1_4_2;
      scope = "test";
      optional = false;
    }
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
