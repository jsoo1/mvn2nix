{
  lib
, pkgs
, patchMavenJar
, org_ow2_asm__asm__jar__6_2
, com_thoughtworks_qdox__qdox__jar__2_0-M8
, org_codehaus_plexus__plexus-java__pom__0_9_10
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-java:jar:0.9.10";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-java";
  version = "0.9.10";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-java/0.9.10/plexus-java-0.9.10.jar";
      sha256 = "9f4c82ea85ccad3c8bb6ae8101ed760aabf5b33b529586a8bd5d1e3d3ab67f1b";
    };
  };
  dependencies = [
    {
      drv = org_ow2_asm__asm__jar__6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_thoughtworks_qdox__qdox__jar__2_0-M8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-java__pom__0_9_10;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
