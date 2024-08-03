{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_wagon__wagon-providers__pom__1_0-beta-6
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-ssh-common:pom:1.0-beta-6";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-ssh-common";
  version = "1.0-beta-6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-ssh-common/1.0-beta-6/wagon-ssh-common-1.0-beta-6.pom";
      sha256 = "fb3ee4b39328726606f0ece82618608713ff45ed4e2fdf061a5face8f0a80ef8";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_wagon__wagon-providers__pom__1_0-beta-6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
