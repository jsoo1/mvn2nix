{
  lib
, pkgs
, patchMavenJar
, org_jboss__jboss-parent__pom__4
}:
patchMavenJar {
  name = "org.jboss.interceptor:jboss-interceptor-api:pom:1.1";
  groupId = "org.jboss.interceptor";
  artifactId = "jboss-interceptor-api";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/jboss/interceptor/jboss-interceptor-api/1.1/jboss-interceptor-api-1.1.pom";
      sha256 = "33265b0bd338ed0a7889d286de5a778aaa07b16ce7d9892513ab2c8499fb47c2";
    };
  };
  dependencies = [
    {
      drv = org_jboss__jboss-parent__pom__4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
