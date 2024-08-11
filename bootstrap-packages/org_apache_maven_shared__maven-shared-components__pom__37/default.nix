{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__37
}:
patchMavenJar {
  name = "maven-shared-components";
  coordinates = "org.apache.maven.shared:maven-shared-components:pom:37";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-components";
  version = "37";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/37/maven-shared-components-37.pom";
      sha256 = "72ab6f7efae60892e6457871a951326a9ad7f92932d34a97715d0908b87874d3";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__37;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
