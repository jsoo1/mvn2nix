{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.commons:commons-parent:pom:52";
  groupId = "org.apache.commons";
  artifactId = "commons-parent";
  version = "52";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-parent/52/commons-parent-52.pom";
      sha256 = "75dbe8f34e98e4c3ff42daae4a2f9eb4cbcd3b5f1047d54460ace906dbb4502e";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__23;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
