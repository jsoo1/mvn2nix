{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-modules__pom__1_11_1
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-module-xhtml:pom:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-module-xhtml";
  version = "1.11.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-module-xhtml/1.11.1/doxia-module-xhtml-1.11.1.pom";
      sha256 = "9613c4b89005fa005c0f57e37a5b4129a345f55250ef951cdca1b4deb3d9336b";
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
