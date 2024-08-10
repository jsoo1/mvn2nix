{
  lib
, pkgs
, patchMavenJar
, org_springframework__spring-framework-bom__pom__5_3_6
, org_apache_sshd__sshd__pom__2_7_0
}:
patchMavenJar {
  name = "org.apache.sshd:sshd-osgi:pom:2.7.0";
  groupId = "org.apache.sshd";
  artifactId = "sshd-osgi";
  version = "2.7.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/sshd/sshd-osgi/2.7.0/sshd-osgi-2.7.0.pom";
      sha256 = "87aa685d5b11561dcf8d9a58f1c3826e464c96557cd8d2db3404afb66c15804f";
    };
  };
  dependencies = [
    {
      drv = org_springframework__spring-framework-bom__pom__5_3_6;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_sshd__sshd__pom__2_7_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
