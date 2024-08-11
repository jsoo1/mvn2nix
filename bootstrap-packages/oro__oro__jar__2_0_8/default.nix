{
  lib
, pkgs
, patchMavenJar
, oro__oro__pom__2_0_8
}:
patchMavenJar {
  name = "oro";
  coordinates = "oro:oro:jar:2.0.8";
  groupId = "oro";
  artifactId = "oro";
  version = "2.0.8";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/oro/oro/2.0.8/oro-2.0.8.jar";
      sha256 = "e00ccdad5df7eb43fdee44232ef64602bf63807c2d133a7be83ba09fd49af26e";
    };
  };
  dependencies = [
    {
      drv = oro__oro__pom__2_0_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
