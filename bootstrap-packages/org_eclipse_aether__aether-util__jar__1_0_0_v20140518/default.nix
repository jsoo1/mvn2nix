{
  lib
, pkgs
, patchMavenJar
, org_eclipse_aether__aether-api__jar__1_0_0_v20140518
, org_eclipse_aether__aether-util__pom__1_0_0_v20140518
}:
patchMavenJar {
  name = "org.eclipse.aether:aether-util:jar:1.0.0.v20140518";
  groupId = "org.eclipse.aether";
  artifactId = "aether-util";
  version = "1.0.0.v20140518";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/aether/aether-util/1.0.0.v20140518/aether-util-1.0.0.v20140518.jar";
      sha256 = "aff0951639837c4e3a4699a421fa79f410032f603f5c6a5bba435e98531f3984";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_aether__aether-api__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-util__pom__1_0_0_v20140518;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
