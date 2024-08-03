{
  lib
, pkgs
, patchMavenJar
, org_sonatype_aether__aether-parent__pom__1_7
}:
patchMavenJar {
  name = "org.sonatype.aether:aether-impl:pom:1.7";
  groupId = "org.sonatype.aether";
  artifactId = "aether-impl";
  version = "1.7";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/aether/aether-impl/1.7/aether-impl-1.7.pom";
      sha256 = "0cf0bc1966c54645ed9702538158cc4a363861905470991616f4dabd4030e851";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_aether__aether-parent__pom__1_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
