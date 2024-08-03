{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__2_0_4
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:2.0.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "2.0.4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/2.0.4/plexus-utils-2.0.4.jar";
      sha256 = "6a17cfbfffe6bb87215ad38bcaac716383e552ec2ba7b204e2673ee66a2afaaa";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__2_0_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
