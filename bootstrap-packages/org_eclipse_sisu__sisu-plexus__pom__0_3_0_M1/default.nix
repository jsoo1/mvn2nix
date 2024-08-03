{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__7
}:
patchMavenJar {
  name = "org.eclipse.sisu:sisu-plexus:pom:0.3.0.M1";
  groupId = "org.eclipse.sisu";
  artifactId = "sisu-plexus";
  version = "0.3.0.M1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/sisu-plexus/0.3.0.M1/sisu-plexus-0.3.0.M1.pom";
      sha256 = "180e15a18091d7adcb13bbb77362bf9280aa94dac10c63c5f64ebb573e64c489";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_oss__oss-parent__pom__7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
