{
  lib
, pkgs
, patchMavenJar
, org_fusesource__fusesource-pom__pom__1_12
}:
patchMavenJar {
  name = "org.fusesource.jansi:jansi:2.2.0";
  groupId = "org.fusesource.jansi";
  artifactId = "jansi";
  version = "2.2.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/fusesource/jansi/jansi/2.2.0/jansi-2.2.0.jar";
        sha256 = "c65e73b83d23731df41f46ab562a4c95452bbdd3965353b35532e7e4adda4c8d";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/fusesource/jansi/jansi/2.2.0/jansi-2.2.0.pom";
        sha256 = "190e85003639b1915ea62d112dcf8875ce633e736b922d1f46ee8b9ad3149b2c";
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
