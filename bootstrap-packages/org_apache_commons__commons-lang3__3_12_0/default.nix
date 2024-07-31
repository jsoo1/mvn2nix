{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-parent__pom__52
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.commons:commons-lang3:3.12.0";
  groupId = "org.apache.commons";
  artifactId = "commons-lang3";
  version = "3.12.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-lang3/3.12.0/commons-lang3-3.12.0.jar";
        sha256 = "d919d904486c037f8d193412da0c92e22a9fa24230b9d67a57855c5c31c7e94e";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-lang3/3.12.0/commons-lang3-3.12.0.pom";
        sha256 = "82d31f1dcc4583effd744e979165b16da64bf86bca623fc5d1b03ed94f45c85a";
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
