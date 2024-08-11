{
  lib
, pkgs
, patchMavenJar
, commons-collections__commons-collections__jar__3_2_1
, commons-lang__commons-lang__jar__2_4
, oro__oro__jar__2_0_8
, org_apache_velocity__velocity__pom__1_6_2
}:
patchMavenJar {
  name = "velocity";
  coordinates = "org.apache.velocity:velocity:jar:1.6.2";
  groupId = "org.apache.velocity";
  artifactId = "velocity";
  version = "1.6.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/velocity/velocity/1.6.2/velocity-1.6.2.jar";
      sha256 = "55a78c885ec9cfb0de7c2130d639d28abd36a8c9407b21a9c17e1f504d902b6c";
    };
  };
  dependencies = [
    {
      drv = commons-collections__commons-collections__jar__3_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-lang__commons-lang__jar__2_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = oro__oro__jar__2_0_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_velocity__velocity__pom__1_6_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
