{
  lib
, pkgs
, patchMavenJar
, org_sonatype_aether__aether-api__jar__1_7
, org_sonatype_aether__aether-util__pom__1_7
}:
patchMavenJar {
  name = "org.sonatype.aether:aether-util:jar:1.7";
  groupId = "org.sonatype.aether";
  artifactId = "aether-util";
  version = "1.7";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/aether/aether-util/1.7/aether-util-1.7.jar";
      sha256 = "ff690ffc550b7ada3a4b79ef4ca89bf002b24f43a13a35d10195c3bba63d7654";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_aether__aether-api__jar__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_aether__aether-util__pom__1_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
