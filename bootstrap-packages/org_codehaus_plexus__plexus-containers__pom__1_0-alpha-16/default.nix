{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_9
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-containers:pom:1.0-alpha-16";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-containers";
  version = "1.0-alpha-16";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-containers/1.0-alpha-16/plexus-containers-1.0-alpha-16.pom";
      sha256 = "85a1bef623d7f6158ed0bb34adb768147af5afab04d72239c313aaea91231c78";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
