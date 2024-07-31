{
  lib
, pkgs
, patchMavenJar
, eu_neilalexander__jnacl__1_0_0
}:
patchMavenJar {
  name = "org.zeromq:jeromq:0.6.0";
  groupId = "org.zeromq";
  artifactId = "jeromq";
  version = "0.6.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/zeromq/jeromq/0.6.0/jeromq-0.6.0.jar";
        sha256 = "4784ff6d6e91b8eecd917b73d07b161c19a808ef870a5bdb760515bb67e208d3";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/zeromq/jeromq/0.6.0/jeromq-0.6.0.pom";
        sha256 = "86fd5e0a7fb712629462cf576007a483dd6095efbe64266a5774fecd88934198";
      };
    }
  ];
  dependencies = [
    {
      drv = eu_neilalexander__jnacl__1_0_0;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
