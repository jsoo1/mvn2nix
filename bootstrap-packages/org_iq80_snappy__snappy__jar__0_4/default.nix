{
  lib
, pkgs
, patchMavenJar
, org_iq80_snappy__snappy__pom__0_4
}:
patchMavenJar {
  name = "org.iq80.snappy:snappy:jar:0.4";
  groupId = "org.iq80.snappy";
  artifactId = "snappy";
  version = "0.4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/iq80/snappy/snappy/0.4/snappy-0.4.jar";
      sha256 = "46a0c87d504ce9d6063e1ff6e4d20738feb49d8abf85b5071a7d18df4f11bac9";
    };
  };
  dependencies = [
    {
      drv = org_iq80_snappy__snappy__pom__0_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
