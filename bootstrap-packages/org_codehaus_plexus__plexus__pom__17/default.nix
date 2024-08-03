{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:17";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "17";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/17/plexus-17.pom";
      sha256 = "91526ee66327c7f50fbb25bd41bfcb916e284414b868e31d50a23004bd7deea7";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
