{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-modules__pom__1_11_1
}:
patchMavenJar {
  name = "doxia-module-xhtml5";
  coordinates = "org.apache.maven.doxia:doxia-module-xhtml5:pom:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-module-xhtml5";
  version = "1.11.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-module-xhtml5/1.11.1/doxia-module-xhtml5-1.11.1.pom";
      sha256 = "a322ee9d8b5b300f337994c710be006dd8b05f2d83e07a9bef64c2530ac9282b";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia-modules__pom__1_11_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
