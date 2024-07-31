{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_8
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:1.3";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "1.3";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.3/plexus-utils-1.3.jar";
        sha256 = "4c9c4724b139290d7947aa8fb2617204a980e33eb725b3fdcaf29d8b71851dd6";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.3/plexus-utils-1.3.pom";
        sha256 = "29fd54ef49c7b404b091e87bb8726de50447d728b46c592fab0806ac9f6b113b";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
