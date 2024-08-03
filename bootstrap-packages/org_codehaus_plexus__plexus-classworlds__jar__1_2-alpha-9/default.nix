{
  lib
, pkgs
, patchMavenJar
, junit__junit__jar__3_8_1
, org_codehaus_plexus__plexus-classworlds__pom__1_2-alpha-9
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:jar:1.2-alpha-9";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "1.2-alpha-9";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/1.2-alpha-9/plexus-classworlds-1.2-alpha-9.jar";
      sha256 = "9861b88bbbc571f4f9019cb9075202174aeb04150b5dd1a7edbca01e30edc90c";
    };
  };
  dependencies = [
    {
      drv = junit__junit__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__pom__1_2-alpha-9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
