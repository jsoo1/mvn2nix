{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__2_0_6
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:2.0.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "2.0.4";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/2.0.4/plexus-utils-2.0.4.jar";
        sha256 = "6a17cfbfffe6bb87215ad38bcaac716383e552ec2ba7b204e2673ee66a2afaaa";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/2.0.4/plexus-utils-2.0.4.pom";
        sha256 = "2896dbf57e8c82121481400e8be4df6110edd37e346a6c144b3156f24bf98f72";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__2_0_6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
