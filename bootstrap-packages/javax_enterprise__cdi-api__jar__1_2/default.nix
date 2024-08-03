{
  lib
, pkgs
, patchMavenJar
, javax_el__javax_el-api__jar__3_0_0
, javax_interceptor__javax_interceptor-api__jar__1_2
, javax_inject__javax_inject__jar__1
, javax_enterprise__cdi-api__pom__1_2
}:
patchMavenJar {
  name = "javax.enterprise:cdi-api:jar:1.2";
  groupId = "javax.enterprise";
  artifactId = "cdi-api";
  version = "1.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/enterprise/cdi-api/1.2/cdi-api-1.2.jar";
      sha256 = "cc5ce2cbc62fe96bf59af00bba00bde823a1094462b4364747863510b76c0518";
    };
  };
  dependencies = [
    {
      drv = javax_el__javax_el-api__jar__3_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_interceptor__javax_interceptor-api__jar__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_enterprise__cdi-api__pom__1_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
