{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_10
, junit__junit__3_8_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:1.2-alpha-9";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "1.2-alpha-9";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/1.2-alpha-9/plexus-classworlds-1.2-alpha-9.jar";
        sha256 = "9861b88bbbc571f4f9019cb9075202174aeb04150b5dd1a7edbca01e30edc90c";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/1.2-alpha-9/plexus-classworlds-1.2-alpha-9.pom";
        sha256 = "224fe4d0c650f085c012f0a03c1995c598c7b5c506bc5350b727c75874330f00";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_10;
      scope = "test";
      optional = false;
    }
    {
      drv = junit__junit__3_8_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
