{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__2_0_2
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:1.5.15";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "1.5.15";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.5.15/plexus-utils-1.5.15.jar";
        sha256 = "2ca121831e597b4d8f2cb22d17c5c041fc23a7777ceb6bfbdd4dfb34bbe7d997";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.5.15/plexus-utils-1.5.15.pom";
        sha256 = "12a3c9a32b82fdc95223cab1f9d344e14ef3e396da14c4d0013451646f3280e7";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__2_0_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
