{
  lib
, pkgs
, patchMavenJar
, net_i2p_crypto__eddsa__pom__0_3_0
}:
patchMavenJar {
  name = "eddsa";
  coordinates = "net.i2p.crypto:eddsa:jar:0.3.0";
  groupId = "net.i2p.crypto";
  artifactId = "eddsa";
  version = "0.3.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/net/i2p/crypto/eddsa/0.3.0/eddsa-0.3.0.jar";
      sha256 = "4dda1120db856640dbec04140ed23242215a075fe127bdefa0dcfa29fb31267d";
    };
  };
  dependencies = [
    {
      drv = net_i2p_crypto__eddsa__pom__0_3_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
