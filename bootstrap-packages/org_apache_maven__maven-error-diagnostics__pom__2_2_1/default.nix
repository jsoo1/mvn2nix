{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__2_2_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-error-diagnostics:pom:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-error-diagnostics";
  version = "2.2.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-error-diagnostics/2.2.1/maven-error-diagnostics-2.2.1.pom";
      sha256 = "228367b7569fb1462a3eb1423bc2778e2fc7fbaee3d3767890c02b8924fa1889";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__2_2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
