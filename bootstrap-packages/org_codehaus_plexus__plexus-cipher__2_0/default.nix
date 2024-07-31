{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__1
, org_codehaus_plexus__plexus__pom__8
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-cipher:2.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-cipher";
  version = "2.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-cipher/2.0/plexus-cipher-2.0.jar";
        sha256 = "9a7f1b5c5a9effd61eadfd8731452a2f76a8e79111fac391ef75ea801bea203a";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-cipher/2.0/plexus-cipher-2.0.pom";
        sha256 = "04842f331b0225b85a5e20439710d228ea7a6302abe6d53c9c9846fbc5bf99ff";
      };
    }
  ];
  dependencies = [
    {
      drv = javax_inject__javax_inject__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
