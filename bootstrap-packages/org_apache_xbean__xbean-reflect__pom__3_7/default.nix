{
  lib
, pkgs
, patchMavenJar
, org_apache_xbean__xbean__pom__3_7
}:
patchMavenJar {
  name = "org.apache.xbean:xbean-reflect:pom:3.7";
  groupId = "org.apache.xbean";
  artifactId = "xbean-reflect";
  version = "3.7";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/xbean/xbean-reflect/3.7/xbean-reflect-3.7.pom";
      sha256 = "9795c15322c5d19af336eebd9e164fa7d5897c4b004a7d66e21635a173e748a9";
    };
  };
  dependencies = [
    {
      drv = org_apache_xbean__xbean__pom__3_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
