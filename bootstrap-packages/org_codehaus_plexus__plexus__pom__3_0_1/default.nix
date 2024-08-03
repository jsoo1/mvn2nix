{
  lib
, pkgs
, patchMavenJar
, org_sonatype_spice__spice-parent__pom__17
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:3.0.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "3.0.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/3.0.1/plexus-3.0.1.pom";
      sha256 = "1649f67caab553dd7e6b98002dcc670dab3f624c78f1259c8323e705b0c41e32";
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
