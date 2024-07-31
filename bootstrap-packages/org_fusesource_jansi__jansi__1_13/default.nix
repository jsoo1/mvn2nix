{
  lib
, pkgs
, patchMavenJar
, org_fusesource__fusesource-pom__pom__1_11
, org_fusesource_jansi__jansi-project__pom__1_13
}:
patchMavenJar {
  name = "org.fusesource.jansi:jansi:1.13";
  groupId = "org.fusesource.jansi";
  artifactId = "jansi";
  version = "1.13";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/fusesource/jansi/jansi/1.13/jansi-1.13.jar";
        sha256 = "65a2a0c38a48dec45e4c1b77d00f80dbf19f3a2e3e8af566fc9976e22c7ea18c";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/fusesource/jansi/jansi/1.13/jansi-1.13.pom";
        sha256 = "273b6833bec9a1c6e19fc0aeddbb825107b0e3d2e26101dac22ad9cc2a08877d";
      };
    }
  ];
  dependencies = [
    {
      drv = org_fusesource__fusesource-pom__pom__1_11;
      scope = "test";
      optional = false;
    }
    {
      drv = org_fusesource_jansi__jansi-project__pom__1_13;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
