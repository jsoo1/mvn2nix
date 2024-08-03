{
  lib
, pkgs
, patchMavenJar
, org_sonatype_spice__spice-parent__pom__17
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:3.3.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "3.3.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/3.3.2/plexus-3.3.2.pom";
      sha256 = "2fd3853acd7d8b548ab59507f1a5a06897efdc0c4f05acb7c2a49bc78ad83eff";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_spice__spice-parent__pom__17;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
