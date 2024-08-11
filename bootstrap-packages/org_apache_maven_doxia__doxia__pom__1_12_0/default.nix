{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__34
}:
patchMavenJar {
  name = "doxia";
  coordinates = "org.apache.maven.doxia:doxia:pom:1.12.0";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia";
  version = "1.12.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia/1.12.0/doxia-1.12.0.pom";
      sha256 = "2d02a0bd64f331b767cee7455b3193c6fb82110143a119858abc968798a5fc29";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__34;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
