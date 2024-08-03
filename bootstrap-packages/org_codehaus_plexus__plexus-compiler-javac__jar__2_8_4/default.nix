{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_0_22
, org_codehaus_plexus__plexus-compiler-api__jar__2_8_4
, org_codehaus_plexus__plexus-compiler-javac__pom__2_8_4
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-compiler-javac:jar:2.8.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-compiler-javac";
  version = "2.8.4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compiler-javac/2.8.4/plexus-compiler-javac-2.8.4.jar";
      sha256 = "a37a6d56a32bd0861d53d817c4c81088c87f9e4601caed01eaec4ede7fa4677a";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_22;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-compiler-api__jar__2_8_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-compiler-javac__pom__2_8_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
