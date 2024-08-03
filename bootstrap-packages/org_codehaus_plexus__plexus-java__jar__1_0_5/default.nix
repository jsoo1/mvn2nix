{
  lib
, pkgs
, patchMavenJar
, org_ow2_asm__asm__jar__7_2
, com_thoughtworks_qdox__qdox__jar__2_0-M9
, org_codehaus_plexus__plexus-java__pom__1_0_5
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-java:jar:1.0.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-java";
  version = "1.0.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-java/1.0.5/plexus-java-1.0.5.jar";
      sha256 = "1c823e3f3ac75e804d79cb16bd31d525370e6d0d76ca5c82a9d31f17331ceee8";
    };
  };
  dependencies = [
    {
      drv = org_ow2_asm__asm__jar__7_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_thoughtworks_qdox__qdox__jar__2_0-M9;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-java__pom__1_0_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
