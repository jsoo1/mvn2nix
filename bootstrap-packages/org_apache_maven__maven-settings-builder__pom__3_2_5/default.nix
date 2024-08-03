{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven:maven-settings-builder:pom:3.2.5";
  groupId = "org.apache.maven";
  artifactId = "maven-settings-builder";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings-builder/3.2.5/maven-settings-builder-3.2.5.pom";
      sha256 = "c1837d6691e39a614c9179bbafaa2c4327457763cf71ffd8f67b7f81ce3084eb";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
