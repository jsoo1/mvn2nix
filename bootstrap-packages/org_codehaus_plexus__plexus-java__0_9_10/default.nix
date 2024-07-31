{
  lib
, pkgs
, patchMavenJar
, org_ow2_asm__asm__6_2
, org_codehaus_plexus__plexus-languages__pom__0_9_10
, org_sonatype_forge__forge-parent__pom__10
, com_thoughtworks_qdox__qdox__2_0-M8
, javax_inject__javax_inject__1
, org_codehaus_plexus__plexus__pom__4_0
, org_codehaus_plexus__plexus-component-annotations__1_7_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-java:0.9.10";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-java";
  version = "0.9.10";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-java/0.9.10/plexus-java-0.9.10.jar";
        sha256 = "9f4c82ea85ccad3c8bb6ae8101ed760aabf5b33b529586a8bd5d1e3d3ab67f1b";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-java/0.9.10/plexus-java-0.9.10.pom";
        sha256 = "b0013096156cbb98dba97c2b0b07be194d33208b5bde7ee8866e69355e9ebd86";
      };
    }
  ];
  dependencies = [
    {
      drv = org_ow2_asm__asm__6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-languages__pom__0_9_10;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_forge__forge-parent__pom__10;
      scope = "test";
      optional = false;
    }
    {
      drv = com_thoughtworks_qdox__qdox__2_0-M8;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__1;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__4_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__1_7_1;
      scope = "compile";
      optional = true;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
