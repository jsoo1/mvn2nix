{
  lib
, pkgs
, patchMavenJar
, javax_mail__mail__1_4_3
, javax_activation__activation__1_1
, org_apache_geronimo_specs__geronimo-jms_1_1_spec__1_0
}:
patchMavenJar {
  name = "log4j:log4j:1.2.17";
  groupId = "log4j";
  artifactId = "log4j";
  version = "1.2.17";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/log4j/log4j/1.2.17/log4j-1.2.17.jar";
        sha256 = "1d31696445697720527091754369082a6651bd49781b6005deb94e56753406f9";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/log4j/log4j/1.2.17/log4j-1.2.17.pom";
        sha256 = "3b95a3d3cdd3aa4b91ab327ddb5a1bfe03d81e273794e36aa1440471d5d70e5e";
      };
    }
  ];
  dependencies = [
    {
      drv = javax_mail__mail__1_4_3;
      scope = "compile";
      optional = true;
    }
    {
      drv = javax_activation__activation__1_1;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_apache_geronimo_specs__geronimo-jms_1_1_spec__1_0;
      scope = "compile";
      optional = true;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
