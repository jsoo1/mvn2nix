{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__4
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:6";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/6/maven-parent-6.pom";
      sha256 = "df8f5fc5e956249833fe9e9bd6df891ca7224ceff1cb729dd84848376545afda";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
