{
  lib
, pkgs
, patchMavenJar
, org_sonatype_spice__spice-parent__pom__10
}:
patchMavenJar {
  name = "org.sonatype.plexus:plexus-plugin-manager:pom:1.0-alpha-1";
  groupId = "org.sonatype.plexus";
  artifactId = "plexus-plugin-manager";
  version = "1.0-alpha-1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/plexus/plexus-plugin-manager/1.0-alpha-1/plexus-plugin-manager-1.0-alpha-1.pom";
      sha256 = "6b5be9183a71a2f814bfc240db09dd461341f28625ff454a41aaa7579948f793";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_spice__spice-parent__pom__10;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
