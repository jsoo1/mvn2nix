{
  lib
, pkgs
, patchMavenJar
, com_fasterxml__oss-parent__pom__38
}:
patchMavenJar {
  name = "org.codehaus.woodstox:stax2-api:4.2.1";
  groupId = "org.codehaus.woodstox";
  artifactId = "stax2-api";
  version = "4.2.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/woodstox/stax2-api/4.2.1/stax2-api-4.2.1.jar";
        sha256 = "678567e48b51a42c65c699f266539ad3d676d4b1a5b0ad7d89ece8b9d5772579";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/woodstox/stax2-api/4.2.1/stax2-api-4.2.1.pom";
        sha256 = "79da410c8c0f46a3f8e8adb30d6c24ccd6065b6ef6bfde87bd97e9881ea0a2e7";
      };
    }
  ];
  dependencies = [
    {
      drv = com_fasterxml__oss-parent__pom__38;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
