{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-lang3__jar__3_14_0
, org_apache_commons__commons-text__pom__1_12_0
}:
patchMavenJar {
  name = "org.apache.commons:commons-text:jar:1.12.0";
  groupId = "org.apache.commons";
  artifactId = "commons-text";
  version = "1.12.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-text/1.12.0/commons-text-1.12.0.jar";
      sha256 = "de023257ff166044a56bd1aa9124e843cd05dac5806cc705a9311f3556d5a15f";
    };
  };
  dependencies = [
    {
      drv = org_apache_commons__commons-lang3__jar__3_14_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-text__pom__1_12_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
