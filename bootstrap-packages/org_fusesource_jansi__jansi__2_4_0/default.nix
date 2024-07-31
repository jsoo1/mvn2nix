{
  lib
, pkgs
, patchMavenJar
, org_fusesource__fusesource-pom__pom__1_12
}:
patchMavenJar {
  name = "org.fusesource.jansi:jansi:2.4.0";
  groupId = "org.fusesource.jansi";
  artifactId = "jansi";
  version = "2.4.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/fusesource/jansi/jansi/2.4.0/jansi-2.4.0.jar";
        sha256 = "6cd91991323dd7b2fb28ca93d7ac12af5a86a2f53279e2b35827b30313fd0b9f";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/fusesource/jansi/jansi/2.4.0/jansi-2.4.0.pom";
        sha256 = "ac40a9f2d0c1ee631fc3b08ef8e2f0bd14ba22011ca76ff1bcf65fb569eadf35";
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
