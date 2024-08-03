{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__22
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-components:pom:18";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-components";
  version = "18";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/18/maven-shared-components-18.pom";
      sha256 = "a1d54fb81b5a8f197f5b3d0a928f63da2278c79bc8dd06e0be93593403f05775";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__22;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
