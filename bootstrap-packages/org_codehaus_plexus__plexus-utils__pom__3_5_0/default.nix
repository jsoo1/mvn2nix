{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__10
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:pom:3.5.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.5.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.5.0/plexus-utils-3.5.0.pom";
      sha256 = "aa4ea451bb6fa92e9cc96654eef53e334ff4d36a946633e01765fed41e845e03";
    };
  };
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
