{
  lib
, pkgs
, patchMavenJar
, org_jboss_interceptor__jboss-interceptor-api__jar__1_1
, javax_annotation__jsr250-api__jar__1_0
, javax_inject__javax_inject__jar__1
, javax_enterprise__cdi-api__pom__1_0
}:
patchMavenJar {
  name = "javax.enterprise:cdi-api:jar:1.0";
  groupId = "javax.enterprise";
  artifactId = "cdi-api";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/enterprise/cdi-api/1.0/cdi-api-1.0.jar";
      sha256 = "1f10b2204cc77c919301f20ff90461c3df1b6e6cb148be1c2d22107f4851d423";
    };
  };
  dependencies = [
    {
      drv = org_jboss_interceptor__jboss-interceptor-api__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_annotation__jsr250-api__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_enterprise__cdi-api__pom__1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
