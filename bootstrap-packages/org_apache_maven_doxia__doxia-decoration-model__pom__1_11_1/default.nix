{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-sitetools__pom__1_11_1
}:
patchMavenJar {
  name = "doxia-decoration-model";
  coordinates = "org.apache.maven.doxia:doxia-decoration-model:pom:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-decoration-model";
  version = "1.11.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-decoration-model/1.11.1/doxia-decoration-model-1.11.1.pom";
      sha256 = "fd2040e074d6b00c595562c7fc8117f4d378038aa0c5c2bc8fb84c2b8e6246fb";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia-sitetools__pom__1_11_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
