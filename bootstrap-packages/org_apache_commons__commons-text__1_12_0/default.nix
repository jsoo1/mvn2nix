{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__31
, org_apache_commons__commons-parent__pom__69
, org_apache_commons__commons-lang3__3_14_0
}:
patchMavenJar {
  name = "org.apache.commons:commons-text:1.12.0";
  groupId = "org.apache.commons";
  artifactId = "commons-text";
  version = "1.12.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-text/1.12.0/commons-text-1.12.0.jar";
        sha256 = "de023257ff166044a56bd1aa9124e843cd05dac5806cc705a9311f3556d5a15f";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-text/1.12.0/commons-text-1.12.0.pom";
        sha256 = "b2d4341c921981cb35d5570f4fc9732a08a34b1528dee84c0507c7f2719a334f";
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
      drv = org_apache_commons__commons-parent__pom__69;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-lang3__3_14_0;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
