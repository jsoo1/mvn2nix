{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_9
, junit__junit__3_8_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:1.2-alpha-7";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "1.2-alpha-7";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/1.2-alpha-7/plexus-classworlds-1.2-alpha-7.jar";
        sha256 = "8d0b03d23ab40c94db71f93bd64b2fdd525d86dda3f4b40474fb9eb27c369f96";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/1.2-alpha-7/plexus-classworlds-1.2-alpha-7.pom";
        sha256 = "2a0abfc63ed5c6216356255aa7c572723087938879934aca1ce11f17c24ce156";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_9;
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
