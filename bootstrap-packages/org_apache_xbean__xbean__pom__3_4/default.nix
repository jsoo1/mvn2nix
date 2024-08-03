{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__4
}:
patchMavenJar {
  name = "org.apache.xbean:xbean:pom:3.4";
  groupId = "org.apache.xbean";
  artifactId = "xbean";
  version = "3.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/xbean/xbean/3.4/xbean-3.4.pom";
      sha256 = "56ab9c6c2d022a9b7079006ba500a996cd2c21411d53cac524933af20c5a4b99";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
