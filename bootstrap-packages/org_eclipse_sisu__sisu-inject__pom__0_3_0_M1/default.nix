{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__7
}:
patchMavenJar {
  name = "org.eclipse.sisu:sisu-inject:pom:0.3.0.M1";
  groupId = "org.eclipse.sisu";
  artifactId = "sisu-inject";
  version = "0.3.0.M1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/sisu-inject/0.3.0.M1/sisu-inject-0.3.0.M1.pom";
      sha256 = "f505692eed1855fa9ec6974661bb3c036c4947dea9ecc3fe9fec37edf07e3429";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_oss__oss-parent__pom__7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
