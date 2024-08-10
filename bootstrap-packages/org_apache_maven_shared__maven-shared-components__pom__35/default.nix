{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__35
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-components:pom:35";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-components";
  version = "35";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/35/maven-shared-components-35.pom";
      sha256 = "9751496ceb9f585901f979e8f11693d8b39c34563b2524d0e38c855bb6f52c59";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__35;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
