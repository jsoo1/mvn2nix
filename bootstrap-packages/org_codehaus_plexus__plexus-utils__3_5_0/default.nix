{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__10
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:3.5.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.5.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.5.0/plexus-utils-3.5.0.jar";
        sha256 = "e5182eb3e5e73cf89d6426ca7f5cbae2e72819b9bed68d872f80f3b535269cb8";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.5.0/plexus-utils-3.5.0.pom";
        sha256 = "aa4ea451bb6fa92e9cc96654eef53e334ff4d36a946633e01765fed41e845e03";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__10;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
