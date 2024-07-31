{
  lib
, pkgs
, patchMavenJar
, org_codehaus__codehaus-parent__pom__4
, org_codehaus_mojo__mojo-parent__pom__32
, org_codehaus_mojo__animal-sniffer-parent__pom__1_10
}:
patchMavenJar {
  name = "org.codehaus.mojo:animal-sniffer-annotations:1.10";
  groupId = "org.codehaus.mojo";
  artifactId = "animal-sniffer-annotations";
  version = "1.10";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/mojo/animal-sniffer-annotations/1.10/animal-sniffer-annotations-1.10.jar";
        sha256 = "03adeb3d4cc8eb704aad44464710b1cc355d7c8b12fbd2b3bea267e6e1436b93";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/mojo/animal-sniffer-annotations/1.10/animal-sniffer-annotations-1.10.pom";
        sha256 = "0adc816e57a5ab976014d2c0da1934c4ba3d1dbae11cb5b5b553f0a7570512ca";
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
    {
      drv = org_codehaus_mojo__animal-sniffer-parent__pom__1_10;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
