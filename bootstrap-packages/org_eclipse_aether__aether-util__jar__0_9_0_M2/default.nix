{
  lib
, pkgs
, patchMavenJar
, org_eclipse_aether__aether-api__jar__0_9_0_M2
, org_eclipse_aether__aether-util__pom__0_9_0_M2
}:
patchMavenJar {
  name = "org.eclipse.aether:aether-util:jar:0.9.0.M2";
  groupId = "org.eclipse.aether";
  artifactId = "aether-util";
  version = "0.9.0.M2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/aether/aether-util/0.9.0.M2/aether-util-0.9.0.M2.jar";
      sha256 = "7d62b0fdef90196ec4b2947f5973d750bfd3935785244e77cc06780131c404e9";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_aether__aether-api__jar__0_9_0_M2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-util__pom__0_9_0_M2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
