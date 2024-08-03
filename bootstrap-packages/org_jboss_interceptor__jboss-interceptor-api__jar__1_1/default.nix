{
  lib
, pkgs
, patchMavenJar
, org_jboss_interceptor__jboss-interceptor-api__pom__1_1
}:
patchMavenJar {
  name = "org.jboss.interceptor:jboss-interceptor-api:jar:1.1";
  groupId = "org.jboss.interceptor";
  artifactId = "jboss-interceptor-api";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/jboss/interceptor/jboss-interceptor-api/1.1/jboss-interceptor-api-1.1.jar";
      sha256 = "9228bc4493a95373e575216d821d4aaf74df5991f3abc4b64bde6ca508b3db0b";
    };
  };
  dependencies = [
    {
      drv = org_jboss_interceptor__jboss-interceptor-api__pom__1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
