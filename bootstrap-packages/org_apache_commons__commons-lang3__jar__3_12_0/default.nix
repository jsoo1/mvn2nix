{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-lang3__pom__3_12_0
}:
patchMavenJar {
  name = "org.apache.commons:commons-lang3:jar:3.12.0";
  groupId = "org.apache.commons";
  artifactId = "commons-lang3";
  version = "3.12.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-lang3/3.12.0/commons-lang3-3.12.0.jar";
      sha256 = "d919d904486c037f8d193412da0c92e22a9fa24230b9d67a57855c5c31c7e94e";
    };
  };
  dependencies = [
    {
      drv = org_apache_commons__commons-lang3__pom__3_12_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
