{
  lib
, pkgs
, patchMavenJar
, commons-lang__commons-lang__pom__2_1
}:
patchMavenJar {
  name = "commons-lang";
  coordinates = "commons-lang:commons-lang:jar:2.1";
  groupId = "commons-lang";
  artifactId = "commons-lang";
  version = "2.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-lang/commons-lang/2.1/commons-lang-2.1.jar";
      sha256 = "2ded7343dc8e57decd5e6302337139be020fdd885a2935925e8d575975e480b9";
    };
  };
  dependencies = [
    {
      drv = commons-lang__commons-lang__pom__2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
