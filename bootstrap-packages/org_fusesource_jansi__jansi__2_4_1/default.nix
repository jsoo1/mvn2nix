{
  lib
, pkgs
, patchMavenJar
, org_fusesource__fusesource-pom__pom__1_12
}:
patchMavenJar {
  name = "org.fusesource.jansi:jansi:2.4.1";
  groupId = "org.fusesource.jansi";
  artifactId = "jansi";
  version = "2.4.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/fusesource/jansi/jansi/2.4.1/jansi-2.4.1.jar";
        sha256 = "2e5e775a9dc58ffa6bbd6aa6f099d62f8b62dcdeb4c3c3bbbe5cf2301bc2dcc1";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/fusesource/jansi/jansi/2.4.1/jansi-2.4.1.pom";
        sha256 = "3f98d979a4d3559f8779fbb004b34ae7516afadf510e11df7cc3cd073eb1bb3b";
      };
    }
  ];
  dependencies = [
    {
      drv = org_fusesource__fusesource-pom__pom__1_12;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
