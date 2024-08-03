{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__jar__1
, org_codehaus_plexus__plexus-cipher__pom__2_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-cipher:jar:2.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-cipher";
  version = "2.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-cipher/2.0/plexus-cipher-2.0.jar";
      sha256 = "9a7f1b5c5a9effd61eadfd8731452a2f76a8e79111fac391ef75ea801bea203a";
    };
  };
  dependencies = [
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-cipher__pom__2_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
