{
  lib
, pkgs
, patchMavenJar
, org_tukaani__xz__pom__1_9
}:
patchMavenJar {
  name = "org.tukaani:xz:jar:1.9";
  groupId = "org.tukaani";
  artifactId = "xz";
  version = "1.9";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/tukaani/xz/1.9/xz-1.9.jar";
      sha256 = "211b306cfc44f8f96df3a0a3ddaf75ba8c5289eed77d60d72f889bb855f535e5";
    };
  };
  dependencies = [
    {
      drv = org_tukaani__xz__pom__1_9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
