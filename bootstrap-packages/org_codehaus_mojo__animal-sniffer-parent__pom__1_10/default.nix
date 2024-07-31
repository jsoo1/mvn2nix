{
  lib
, pkgs
, patchMavenJar
, org_codehaus__codehaus-parent__pom__4
, org_codehaus_mojo__mojo-parent__pom__32
}:
patchMavenJar {
  name = "org.codehaus.mojo:animal-sniffer-parent:pom:1.10";
  groupId = "org.codehaus.mojo";
  artifactId = "animal-sniffer-parent";
  version = "1.10";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/mojo/animal-sniffer-parent/1.10/animal-sniffer-parent-1.10.pom";
        sha256 = "a63a5ca93a420c177a23f8f08231c3ecb16566c58f41e4b0152ce7e40b6be3ea";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus__codehaus-parent__pom__4;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_mojo__mojo-parent__pom__32;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
