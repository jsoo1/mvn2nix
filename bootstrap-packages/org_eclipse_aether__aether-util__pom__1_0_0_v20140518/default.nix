{
  lib
, pkgs
, patchMavenJar
, org_eclipse_aether__aether__pom__1_0_0_v20140518
}:
patchMavenJar {
  name = "org.eclipse.aether:aether-util:pom:1.0.0.v20140518";
  groupId = "org.eclipse.aether";
  artifactId = "aether-util";
  version = "1.0.0.v20140518";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/aether/aether-util/1.0.0.v20140518/aether-util-1.0.0.v20140518.pom";
      sha256 = "5c8b507a80901fcdaef89f50c639176b516e8866c6bf07be1ab8ab9da5a4877f";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_aether__aether__pom__1_0_0_v20140518;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
