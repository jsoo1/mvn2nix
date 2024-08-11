{
  lib
, pkgs
, patchMavenJar
, commons-fileupload__commons-fileupload__pom__1_0
}:
patchMavenJar {
  name = "commons-fileupload";
  coordinates = "commons-fileupload:commons-fileupload:jar:1.0";
  groupId = "commons-fileupload";
  artifactId = "commons-fileupload";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-fileupload/commons-fileupload/1.0/commons-fileupload-1.0.jar";
      sha256 = "5263c9d60a380e53d0d4a9598f7109141e5683cb08fe86fa3f48b03493716af6";
    };
  };
  dependencies = [
    {
      drv = commons-fileupload__commons-fileupload__pom__1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
