{
  lib
, pkgs
, patchMavenJar
, org_codehaus__codehaus-parent__pom__4
}:
patchMavenJar {
  name = "org.codehaus.mojo:mojo-parent:pom:32";
  groupId = "org.codehaus.mojo";
  artifactId = "mojo-parent";
  version = "32";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/mojo/mojo-parent/32/mojo-parent-32.pom";
        sha256 = "f25e88bf3eb1fe18e8fc24fcfc7a10dda3142fc0b89eb1cd5e5ae15afa162125";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus__codehaus-parent__pom__4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
