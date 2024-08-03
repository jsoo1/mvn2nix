{
  lib
, pkgs
, patchMavenJar
, net_java__jvnet-parent__pom__3
}:
patchMavenJar {
  name = "javax.el:javax.el-api:pom:3.0.0";
  groupId = "javax.el";
  artifactId = "javax.el-api";
  version = "3.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/el/javax.el-api/3.0.0/javax.el-api-3.0.0.pom";
      sha256 = "8e4d65f3046a89744b6bf31ba0d6c36643f546885919f8df7d065bec3b52dfbe";
    };
  };
  dependencies = [
    {
      drv = net_java__jvnet-parent__pom__3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
