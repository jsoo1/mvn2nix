{
  lib
, pkgs
, patchMavenJar
, org_apache_xbean__xbean__pom__3_4
}:
patchMavenJar {
  name = "org.apache.xbean:xbean-reflect:pom:3.4";
  groupId = "org.apache.xbean";
  artifactId = "xbean-reflect";
  version = "3.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/xbean/xbean-reflect/3.4/xbean-reflect-3.4.pom";
      sha256 = "01c97d4286dd3b5e5441faac3abb589f1fe123cea138bb4ae0995ffae14938df";
    };
  };
  dependencies = [
    {
      drv = org_apache_xbean__xbean__pom__3_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
