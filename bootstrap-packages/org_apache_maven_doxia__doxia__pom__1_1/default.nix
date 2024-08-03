{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__11
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia:pom:1.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia/1.1/doxia-1.1.pom";
      sha256 = "922e221bd72502f90730df5600a965e8a68adbc2c41c7db272de7d690596fb96";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__11;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
