{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__35
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-invoker:pom:3.2.0";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-invoker";
  version = "3.2.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-invoker/3.2.0/maven-invoker-3.2.0.pom";
      sha256 = "a436b883c4070d735010fba9e3b606bc6b973dbcae982be57452e98d4b88cad9";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__35;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
