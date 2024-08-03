{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-classworlds__pom__2_5_2
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:jar:2.5.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "2.5.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/2.5.2/plexus-classworlds-2.5.2.jar";
      sha256 = "b2931d41740490a8d931cbe0cfe9ac20deb66cca606e679f52522f7f534c9fd7";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-classworlds__pom__2_5_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
