{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-parent__pom__52
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "commons-io:commons-io:2.11.0";
  groupId = "commons-io";
  artifactId = "commons-io";
  version = "2.11.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.11.0/commons-io-2.11.0.jar";
        sha256 = "961b2f6d87dbacc5d54abf45ab7a6e2495f89b75598962d8c723cea9bc210908";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.11.0/commons-io-2.11.0.pom";
        sha256 = "2e016fd7e3244b5f2c20acad834d93aa4790486ee1e4564641361a3e831eef59";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_commons__commons-parent__pom__52;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__23;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
