{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__10
, org_apache__apache__pom__4
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia:pom:1.0";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia";
  version = "1.0";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia/1.0/doxia-1.0.pom";
        sha256 = "38246291439393fd08f54c6d7fedde2db0fd5c94d0910f17b99e8d59a2858e98";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__10;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
