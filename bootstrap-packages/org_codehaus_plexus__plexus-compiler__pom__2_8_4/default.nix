{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-components__pom__4_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-compiler:pom:2.8.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-compiler";
  version = "2.8.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compiler/2.8.4/plexus-compiler-2.8.4.pom";
      sha256 = "90de88821eb50c3238f576eab8b08f36635a1b5d6a66d1ed52b93b10d54730b0";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-components__pom__4_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
