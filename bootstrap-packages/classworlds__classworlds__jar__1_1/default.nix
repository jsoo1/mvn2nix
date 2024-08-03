{
  lib
, pkgs
, patchMavenJar
, classworlds__classworlds__pom__1_1
}:
patchMavenJar {
  name = "classworlds:classworlds:jar:1.1";
  groupId = "classworlds";
  artifactId = "classworlds";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/classworlds/classworlds/1.1/classworlds-1.1.jar";
      sha256 = "4e3e0ad158ec60917e0de544c550f31cd65d5a97c3af1c1968bf427e4a9df2e4";
    };
  };
  dependencies = [
    {
      drv = classworlds__classworlds__pom__1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
