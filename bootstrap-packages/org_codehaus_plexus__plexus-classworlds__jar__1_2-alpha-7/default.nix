{
  lib
, pkgs
, patchMavenJar
, junit__junit__jar__3_8_1
, org_codehaus_plexus__plexus-classworlds__pom__1_2-alpha-7
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:jar:1.2-alpha-7";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "1.2-alpha-7";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/1.2-alpha-7/plexus-classworlds-1.2-alpha-7.jar";
      sha256 = "8d0b03d23ab40c94db71f93bd64b2fdd525d86dda3f4b40474fb9eb27c369f96";
    };
  };
  dependencies = [
    {
      drv = junit__junit__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__pom__1_2-alpha-7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
