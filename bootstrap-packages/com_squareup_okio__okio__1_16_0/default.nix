{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__7
, com_squareup_okio__okio-parent__pom__1_16_0
, org_codehaus_mojo__animal-sniffer-annotations__1_10
}:
patchMavenJar {
  name = "com.squareup.okio:okio:1.16.0";
  groupId = "com.squareup.okio";
  artifactId = "okio";
  version = "1.16.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/squareup/okio/okio/1.16.0/okio-1.16.0.jar";
        sha256 = "ec0484ff1903640e3845c2b10abb99eff2d32308ffe3459e5f92309a451b9c7e";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/squareup/okio/okio/1.16.0/okio-1.16.0.pom";
        sha256 = "1d2521621c0875123aa91311b2fe8edefd0ed93f66be6dfea18cc61bc5c99e36";
      };
    }
  ];
  dependencies = [
    {
      drv = org_sonatype_oss__oss-parent__pom__7;
      scope = "test";
      optional = false;
    }
    {
      drv = com_squareup_okio__okio-parent__pom__1_16_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_mojo__animal-sniffer-annotations__1_10;
      scope = "compile";
      optional = true;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
