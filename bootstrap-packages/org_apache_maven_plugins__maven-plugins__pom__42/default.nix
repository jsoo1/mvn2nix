{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_apache_maven__maven-parent__pom__42
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-plugins:pom:42";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-plugins";
  version = "42";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-plugins/42/maven-plugins-42.pom";
      sha256 = "5b31681ea67e838a8ed1f08af891d1ae50f16dfadd3fc2b787900ed69d5f2503";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__42;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
