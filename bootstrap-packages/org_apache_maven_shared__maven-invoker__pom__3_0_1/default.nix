{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__31
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-invoker:pom:3.0.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-invoker";
  version = "3.0.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-invoker/3.0.1/maven-invoker-3.0.1.pom";
      sha256 = "8ab7297ba1f80bed1949f723822ff0b49c92cf8963ef1f9b2c4402a78e75b91d";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__31;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
