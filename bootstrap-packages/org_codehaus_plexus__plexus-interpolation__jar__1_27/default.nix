{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-interpolation__pom__1_27
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interpolation:jar:1.27";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interpolation";
  version = "1.27";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.27/plexus-interpolation-1.27.jar";
      sha256 = "3fb4fb6143fdf964024c3cb738551524b9ea84e5c211cd660c559ad0703e5230";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-interpolation__pom__1_27;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
