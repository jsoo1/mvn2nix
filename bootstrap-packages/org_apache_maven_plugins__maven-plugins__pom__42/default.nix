{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_plugin-tools__maven-plugin-annotations__3_12_0
, org_apache_maven__maven-parent__pom__42
, org_apache__apache__pom__32
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-plugins:pom:42";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-plugins";
  version = "42";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-plugins/42/maven-plugins-42.pom";
        sha256 = "5b31681ea67e838a8ed1f08af891d1ae50f16dfadd3fc2b787900ed69d5f2503";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_plugin-tools__maven-plugin-annotations__3_12_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__42;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__32;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
