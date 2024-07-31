{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__16
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interpolation:1.27";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interpolation";
  version = "1.27";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.27/plexus-interpolation-1.27.jar";
        sha256 = "3fb4fb6143fdf964024c3cb738551524b9ea84e5c211cd660c559ad0703e5230";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.27/plexus-interpolation-1.27.pom";
        sha256 = "d54fbcbc4399e352322874a4128b9d28fe9fe1583f89ec361de242ea38d33f9b";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__16;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
