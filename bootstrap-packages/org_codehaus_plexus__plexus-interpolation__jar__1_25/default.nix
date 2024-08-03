{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-interpolation__pom__1_25
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interpolation:jar:1.25";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interpolation";
  version = "1.25";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.25/plexus-interpolation-1.25.jar";
      sha256 = "e003802501574637f7abdc4e83e6d509a31e9ff825d12da6d1e419acf9688705";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-interpolation__pom__1_25;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
