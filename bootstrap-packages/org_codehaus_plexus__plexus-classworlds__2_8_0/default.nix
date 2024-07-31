{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__16
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:2.8.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "2.8.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/2.8.0/plexus-classworlds-2.8.0.jar";
        sha256 = "081b40e0eab033cd5ac72d2501bfff4f5fd2a3eef827051111730ea152681c72";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/2.8.0/plexus-classworlds-2.8.0.pom";
        sha256 = "648841a60891a12123b4f39c1562a8622b7e28849af5f1b58448113dbde358f9";
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
