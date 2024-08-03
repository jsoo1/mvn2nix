{
  lib
, pkgs
, patchMavenJar
, org_sat4j__org_sat4j_pb__pom__2_0_4
}:
patchMavenJar {
  name = "org.sat4j:org.sat4j.pb:jar:2.0.4";
  groupId = "org.sat4j";
  artifactId = "org.sat4j.pb";
  version = "2.0.4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sat4j/org.sat4j.pb/2.0.4/org.sat4j.pb-2.0.4.jar";
      sha256 = "f8ad260eaa3a52fa59547e7fc548078acb2dbb2fa62b11bcae0f02196665d67a";
    };
  };
  dependencies = [
    {
      drv = org_sat4j__org_sat4j_pb__pom__2_0_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
