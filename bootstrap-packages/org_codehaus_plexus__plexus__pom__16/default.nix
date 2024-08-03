{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:16";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "16";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/16/plexus-16.pom";
      sha256 = "68d4eed65a3dbbc342ed80dd138fbe9c67cb7fb4c2abc4f5201cdb5b9f645868";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
