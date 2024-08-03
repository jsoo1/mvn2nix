{
  lib
, pkgs
, patchMavenJar
, commons-logging__commons-logging__pom__1_0_4
}:
patchMavenJar {
  name = "commons-logging:commons-logging:jar:1.0.4";
  groupId = "commons-logging";
  artifactId = "commons-logging";
  version = "1.0.4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.0.4/commons-logging-1.0.4.jar";
      sha256 = "e94af49749384c11f5aa50e8d0f5fe679be771295b52030338d32843c980351e";
    };
  };
  dependencies = [
    {
      drv = commons-logging__commons-logging__pom__1_0_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
