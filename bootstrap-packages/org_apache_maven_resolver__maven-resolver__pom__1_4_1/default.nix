{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__21
, org_apache_maven__maven-parent__pom__33
}:
patchMavenJar {
  name = "org.apache.maven.resolver:maven-resolver:pom:1.4.1";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver";
  version = "1.4.1";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver/1.4.1/maven-resolver-1.4.1.pom";
        sha256 = "831c3849751101226495acfe9119582feb734a4539b070e0fbd9e85b03b501ce";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__21;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__33;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
