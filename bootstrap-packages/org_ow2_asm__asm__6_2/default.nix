{
  lib
, pkgs
, patchMavenJar
, org_ow2__ow2__pom__1_5
}:
patchMavenJar {
  name = "org.ow2.asm:asm:6.2";
  groupId = "org.ow2.asm";
  artifactId = "asm";
  version = "6.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/ow2/asm/asm/6.2/asm-6.2.jar";
        sha256 = "917bda888bc543187325d5fbc1034207eed152574ef78df1734ca0aee40b7fc8";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/ow2/asm/asm/6.2/asm-6.2.pom";
        sha256 = "92ec633f93f9c84dcb087a79df1395cfef07be574076ceaeb3159e096b4d4643";
      };
    }
  ];
  dependencies = [
    {
      drv = org_ow2__ow2__pom__1_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
