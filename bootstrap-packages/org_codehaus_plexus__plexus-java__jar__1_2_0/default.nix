{
  lib
, pkgs
, patchMavenJar
, org_ow2_asm__asm__jar__9_6
, com_thoughtworks_qdox__qdox__jar__2_0_3
, org_codehaus_plexus__plexus-java__pom__1_2_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-java:jar:1.2.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-java";
  version = "1.2.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-java/1.2.0/plexus-java-1.2.0.jar";
      sha256 = "4d2d63cdcad46feba432110ef64bcdc8f8fad48538fda5cd2253686b45a94304";
    };
  };
  dependencies = [
    {
      drv = org_ow2_asm__asm__jar__9_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_thoughtworks_qdox__qdox__jar__2_0_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-java__pom__1_2_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
