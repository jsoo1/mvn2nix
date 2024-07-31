{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_plugin-tools__maven-plugin-tools__pom__3_7_0
, org_apache__apache__pom__27
, org_apache_maven__maven-parent__pom__37
}:
patchMavenJar {
  name = "org.apache.maven.plugin-tools:maven-plugin-annotations:3.7.0";
  groupId = "org.apache.maven.plugin-tools";
  artifactId = "maven-plugin-annotations";
  version = "3.7.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugin-tools/maven-plugin-annotations/3.7.0/maven-plugin-annotations-3.7.0.jar";
        sha256 = "6f154c4eb3bc50dd609e794b364fd18661a4b0b91c7e4a0810127a7620e30603";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugin-tools/maven-plugin-annotations/3.7.0/maven-plugin-annotations-3.7.0.pom";
        sha256 = "86d9eb200680426ae1788d9e23c63d39d723c423804060466637a2ab7100729d";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_plugin-tools__maven-plugin-tools__pom__3_7_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__27;
      scope = "test";
      optional = false;
    }
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
