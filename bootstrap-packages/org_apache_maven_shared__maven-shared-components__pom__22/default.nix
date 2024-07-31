{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__17
, org_apache_maven__maven-parent__pom__27
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-components:pom:22";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-components";
  version = "22";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/22/maven-shared-components-22.pom";
        sha256 = "754543cedb4af3f32708377e065e4a2cc37fc35569f0c073f946e7fc64865387";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__17;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__27;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
