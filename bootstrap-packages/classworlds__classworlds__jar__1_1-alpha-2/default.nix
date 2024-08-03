{
  lib
, pkgs
, patchMavenJar
, classworlds__classworlds__pom__1_1-alpha-2
}:
patchMavenJar {
  name = "classworlds:classworlds:jar:1.1-alpha-2";
  groupId = "classworlds";
  artifactId = "classworlds";
  version = "1.1-alpha-2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/classworlds/classworlds/1.1-alpha-2/classworlds-1.1-alpha-2.jar";
      sha256 = "2bf4e59f3acd106fea6145a9a88fe8956509f8b9c0fdd11eb96fee757269e3f3";
    };
  };
  dependencies = [
    {
      drv = classworlds__classworlds__pom__1_1-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
