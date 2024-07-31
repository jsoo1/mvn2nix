{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__27
, org_apache_maven__maven-parent__pom__37
}:
patchMavenJar {
  name = "org.apache.maven.plugin-tools:maven-plugin-tools:pom:3.7.0";
  groupId = "org.apache.maven.plugin-tools";
  artifactId = "maven-plugin-tools";
  version = "3.7.0";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugin-tools/maven-plugin-tools/3.7.0/maven-plugin-tools-3.7.0.pom";
        sha256 = "368a5577c6d0eb3427657eda06ff356ee56dc72de190ba62bc94033e91a1f21d";
      };
    }
  ];
  dependencies = [
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
