{
  lib
, pkgs
, patchMavenJar
, org_springframework__spring-framework-bom__pom__5_3_6
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.sshd:sshd:pom:2.7.0";
  groupId = "org.apache.sshd";
  artifactId = "sshd";
  version = "2.7.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/sshd/sshd/2.7.0/sshd-2.7.0.pom";
      sha256 = "d5030e2e31d7ad4c0cd09f9e6b6f55b00c1a94ba2d8abdccc8806c12a2d9d28b";
    };
  };
  dependencies = [
    {
      drv = org_springframework__spring-framework-bom__pom__5_3_6;
      scope = "test";
      optional = false;
    }
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
