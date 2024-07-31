{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__31
, org_apache_maven_plugin-tools__maven-plugin-tools__pom__3_12_0
, org_apache_maven__maven-parent__pom__41
}:
patchMavenJar {
  name = "org.apache.maven.plugin-tools:maven-plugin-annotations:3.12.0";
  groupId = "org.apache.maven.plugin-tools";
  artifactId = "maven-plugin-annotations";
  version = "3.12.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugin-tools/maven-plugin-annotations/3.12.0/maven-plugin-annotations-3.12.0.jar";
        sha256 = "d3ddd26c5b0e6c0e9521d1dac4ca5a02d633f628f6f06b847a5dc425c6b34e7a";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugin-tools/maven-plugin-annotations/3.12.0/maven-plugin-annotations-3.12.0.pom";
        sha256 = "210f6be4d3200f79263d020b0e90aa5565e92669e906cd5983dad4e4c65da83a";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__31;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_plugin-tools__maven-plugin-tools__pom__3_12_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__41;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
