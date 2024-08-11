{
  lib
, pkgs
, patchMavenJar
, org_apache_xbean__xbean-reflect__pom__3_7
}:
patchMavenJar {
  name = "xbean-reflect";
  coordinates = "org.apache.xbean:xbean-reflect:jar:3.7";
  groupId = "org.apache.xbean";
  artifactId = "xbean-reflect";
  version = "3.7";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/xbean/xbean-reflect/3.7/xbean-reflect-3.7.jar";
      sha256 = "104e5e9bb5a669f86722f32281960700f7ec8e3209ef51b23eb9b6d23d1629cb";
    };
  };
  dependencies = [
    {
      drv = org_apache_xbean__xbean-reflect__pom__3_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
