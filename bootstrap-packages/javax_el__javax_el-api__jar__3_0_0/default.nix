{
  lib
, pkgs
, patchMavenJar
, javax_el__javax_el-api__pom__3_0_0
}:
patchMavenJar {
  name = "javax.el:javax.el-api:jar:3.0.0";
  groupId = "javax.el";
  artifactId = "javax.el-api";
  version = "3.0.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/el/javax.el-api/3.0.0/javax.el-api-3.0.0.jar";
      sha256 = "8d21ac8c3a38027be27ff4c4fe24806ae2fc188559123253ddc7425066d78fa1";
    };
  };
  dependencies = [
    {
      drv = javax_el__javax_el-api__pom__3_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
