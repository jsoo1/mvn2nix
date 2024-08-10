{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__40
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-components:pom:40";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-components";
  version = "40";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/40/maven-shared-components-40.pom";
      sha256 = "b1ffeb3c2ae99f1f45a8058a910bbdbbd0ead1f2312e58bd1818db3bfc77974f";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__40;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
