{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__34
, org_apache_maven_doxia__doxia-logging-api__1_11_1
, org_apache_maven_doxia__doxia__pom__1_11_1
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-sink-api:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-sink-api";
  version = "1.11.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.11.1/doxia-sink-api-1.11.1.jar";
        sha256 = "39ac38bb7d752ea003be17a0065522e4e1b076a4f7e374bea55259f3e133f28f";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.11.1/doxia-sink-api-1.11.1.pom";
        sha256 = "780f9b25ba1a38ef6494f32236a59f1ba5b5298724ab4ff3419e9aa3195b9858";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__34;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-logging-api__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia__pom__1_11_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__23;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
