{
  lib
, pkgs
, patchMavenJar
, avalon-framework__avalon-framework__4_1_3
, log4j__log4j__1_2_6
, logkit__logkit__1_0_1
}:
patchMavenJar {
  name = "commons-logging:commons-logging:1.0.4";
  groupId = "commons-logging";
  artifactId = "commons-logging";
  version = "1.0.4";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.0.4/commons-logging-1.0.4.jar";
        sha256 = "e94af49749384c11f5aa50e8d0f5fe679be771295b52030338d32843c980351e";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.0.4/commons-logging-1.0.4.pom";
        sha256 = "65d310509352b5425118225ee600a01f83ba72142d035014b5d164bc04b2d284";
      };
    }
  ];
  dependencies = [
    {
      drv = avalon-framework__avalon-framework__4_1_3;
      scope = "compile";
      optional = true;
    }
    {
      drv = log4j__log4j__1_2_6;
      scope = "compile";
      optional = true;
    }
    {
      drv = logkit__logkit__1_0_1;
      scope = "compile";
      optional = true;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
