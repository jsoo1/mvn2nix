{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__5
, org_apache_maven__maven-parent__pom__11
}:
patchMavenJar {
  name = "org.apache.maven:maven:pom:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven";
  version = "2.2.1";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven/2.2.1/maven-2.2.1.pom";
        sha256 = "d135cff96dcbbc8a5fab30180e557cae620373cf26941d4c738a88896a2d98ed";
      };
    }
  ];
  dependencies = [
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
