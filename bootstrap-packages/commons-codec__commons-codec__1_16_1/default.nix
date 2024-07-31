{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__31
, org_apache_commons__commons-parent__pom__66
}:
patchMavenJar {
  name = "commons-codec:commons-codec:1.16.1";
  groupId = "commons-codec";
  artifactId = "commons-codec";
  version = "1.16.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-codec/commons-codec/1.16.1/commons-codec-1.16.1.jar";
        sha256 = "ec87bfb55f22cbd1b21e2190eeda28b2b312ed2a431ee49fbdcc01812d04a5e4";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-codec/commons-codec/1.16.1/commons-codec-1.16.1.pom";
        sha256 = "b826ddd92f9d7cc64371a02fa0830c154d67c98370ea54a2d196e72eb590ad28";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__31;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-parent__pom__66;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
