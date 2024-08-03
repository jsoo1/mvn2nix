{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-xml__pom__3_0_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-xml:jar:3.0.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-xml";
  version = "3.0.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-xml/3.0.0/plexus-xml-3.0.0.jar";
      sha256 = "d2622dc9339b16f5b8c9cad2add440e965831d0e16f19ae1de24e1202b0de536";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-xml__pom__3_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
