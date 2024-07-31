{
  lib
, pkgs
, patchMavenJar
, com_thoughtworks_qdox__qdox__2_0-M9
, org_codehaus_plexus__plexus__pom__6_2
, javax_inject__javax_inject__1
, org_codehaus_plexus__plexus-languages__pom__1_0_5
, org_ow2_asm__asm__7_2
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-java:1.0.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-java";
  version = "1.0.5";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-java/1.0.5/plexus-java-1.0.5.jar";
        sha256 = "1c823e3f3ac75e804d79cb16bd31d525370e6d0d76ca5c82a9d31f17331ceee8";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-java/1.0.5/plexus-java-1.0.5.pom";
        sha256 = "4da92114a3ecf41715046ffa12714b6f16217bcc1dfe50e3affe0e2005b21584";
      };
    }
  ];
  dependencies = [
    {
      drv = com_thoughtworks_qdox__qdox__2_0-M9;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__6_2;
      scope = "test";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__1;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_codehaus_plexus__plexus-languages__pom__1_0_5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_ow2_asm__asm__7_2;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
