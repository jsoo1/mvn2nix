{
  lib
, pkgs
, patchMavenJar
, org_fusesource__fusesource-pom__pom__1_11
}:
patchMavenJar {
  name = "org.fusesource.jansi:jansi-project:pom:1.13";
  groupId = "org.fusesource.jansi";
  artifactId = "jansi-project";
  version = "1.13";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/fusesource/jansi/jansi-project/1.13/jansi-project-1.13.pom";
        sha256 = "c3eede2480212df8b2c999fcb7a2e6b59be384069d95d2f5a265eb3c318f48fe";
      };
    }
  ];
  dependencies = [
    {
      drv = org_fusesource__fusesource-pom__pom__1_11;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
