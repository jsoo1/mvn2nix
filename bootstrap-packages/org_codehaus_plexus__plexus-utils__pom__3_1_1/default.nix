{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__4_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:pom:3.1.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.1.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.1.1/plexus-utils-3.1.1.pom";
      sha256 = "6e9ef6a42b78c418176d07882762f53664bc39bac88135be8cb56337c050e6dd";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__4_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
