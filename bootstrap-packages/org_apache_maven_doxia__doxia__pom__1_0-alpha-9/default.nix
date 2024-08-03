{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__6
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia:pom:1.0-alpha-9";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia";
  version = "1.0-alpha-9";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia/1.0-alpha-9/doxia-1.0-alpha-9.pom";
      sha256 = "88d361ecbf2f165352d7a20b7c2a6cac8d12146177dfd896b916d64c0c4ab745";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
