{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__39
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-plugins:pom:39";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-plugins";
  version = "39";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-plugins/39/maven-plugins-39.pom";
      sha256 = "18085afbef3a17942b442135a3f0e77018cda66edd33c6b18fd18440661bc29e";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__39;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
