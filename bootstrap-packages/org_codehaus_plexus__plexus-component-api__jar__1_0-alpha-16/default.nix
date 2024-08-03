{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-classworlds__jar__1_2-alpha-7
, junit__junit__jar__3_8_1
, org_codehaus_plexus__plexus-component-api__pom__1_0-alpha-16
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-api:jar:1.0-alpha-16";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-api";
  version = "1.0-alpha-16";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-api/1.0-alpha-16/plexus-component-api-1.0-alpha-16.jar";
      sha256 = "2b0ad8053a2f6fa8e3cde8e290d1431a59f0da0808b171902f3f7734dd89037c";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__1_2-alpha-7;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-api__pom__1_0-alpha-16;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
