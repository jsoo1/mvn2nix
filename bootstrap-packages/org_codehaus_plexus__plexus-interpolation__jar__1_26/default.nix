{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-interpolation__pom__1_26
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interpolation:jar:1.26";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interpolation";
  version = "1.26";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.26/plexus-interpolation-1.26.jar";
      sha256 = "b3b5412ce17889103ea564bcdfcf9fb3dfa540344ffeac6b538a73c9d7182662";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-interpolation__pom__1_26;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
