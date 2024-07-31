{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__31
, org_apache_maven__maven-parent__pom__41
}:
patchMavenJar {
  name = "org.apache.maven.plugin-tools:maven-plugin-tools:pom:3.12.0";
  groupId = "org.apache.maven.plugin-tools";
  artifactId = "maven-plugin-tools";
  version = "3.12.0";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugin-tools/maven-plugin-tools/3.12.0/maven-plugin-tools-3.12.0.pom";
        sha256 = "57700fa2b2d7d24b8b4c7192531c256851732702d96dbe292e4fb45e7d518117";
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
      drv = org_apache_maven__maven-parent__pom__41;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
