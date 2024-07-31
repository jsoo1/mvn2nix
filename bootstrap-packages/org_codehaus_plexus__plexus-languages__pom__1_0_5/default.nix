{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__6_2
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-languages:pom:1.0.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-languages";
  version = "1.0.5";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-languages/1.0.5/plexus-languages-1.0.5.pom";
        sha256 = "87102f4ea6de726c12968e552d2785f4c8e03562c547a58aa028da7d8f09462e";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__6_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
