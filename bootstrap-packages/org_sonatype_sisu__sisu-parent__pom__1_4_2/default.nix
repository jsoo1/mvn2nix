{
  lib
, pkgs
, patchMavenJar
, org_sonatype_forge__forge-parent__pom__6
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-parent:pom:1.4.2";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-parent";
  version = "1.4.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-parent/1.4.2/sisu-parent-1.4.2.pom";
      sha256 = "abb04084d0885319fd0b372d77655f8feb8aa8bb091699fcd99b45798a9587d5";
    };
  };
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
