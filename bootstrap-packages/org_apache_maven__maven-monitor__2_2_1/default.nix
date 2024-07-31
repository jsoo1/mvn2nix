{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__2_2_1
, org_apache__apache__pom__5
, org_apache_maven__maven-parent__pom__11
}:
patchMavenJar {
  name = "org.apache.maven:maven-monitor:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-monitor";
  version = "2.2.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-monitor/2.2.1/maven-monitor-2.2.1.jar";
        sha256 = "a5f0d9e3f9afaa0cdc982e4f4c82d96a8608fd67c26f64eacd0405d5ac0f97d2";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-monitor/2.2.1/maven-monitor-2.2.1.pom";
        sha256 = "bc962d48dcebb463c1071004015c4609516d616e884ce36eb7390f9a8095a65b";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__2_2_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__11;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
