{
  lib
, pkgs
, patchMavenJar
, aopalliance__aopalliance__pom__1_0
}:
patchMavenJar {
  name = "aopalliance:aopalliance:jar:1.0";
  groupId = "aopalliance";
  artifactId = "aopalliance";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/aopalliance/aopalliance/1.0/aopalliance-1.0.jar";
      sha256 = "0addec670fedcd3f113c5c8091d783280d23f75e3acb841b61a9cdb079376a08";
    };
  };
  dependencies = [
    {
      drv = aopalliance__aopalliance__pom__1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
