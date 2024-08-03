{
  lib
, pkgs
, patchMavenJar
, stax__stax-api__jar__1_0_1
, org_codehaus_woodstox__wstx-asl__pom__3_2_6
}:
patchMavenJar {
  name = "org.codehaus.woodstox:wstx-asl:jar:3.2.6";
  groupId = "org.codehaus.woodstox";
  artifactId = "wstx-asl";
  version = "3.2.6";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/woodstox/wstx-asl/3.2.6/wstx-asl-3.2.6.jar";
      sha256 = "03cbe8dcaa909a6f72219abec105675c6df08898971c326cf7e64373bff5e769";
    };
  };
  dependencies = [
    {
      drv = stax__stax-api__jar__1_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_woodstox__wstx-asl__pom__3_2_6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
