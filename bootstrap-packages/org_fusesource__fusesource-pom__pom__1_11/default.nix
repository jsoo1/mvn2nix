{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.fusesource:fusesource-pom:pom:1.11";
  groupId = "org.fusesource";
  artifactId = "fusesource-pom";
  version = "1.11";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/fusesource/fusesource-pom/1.11/fusesource-pom-1.11.pom";
        sha256 = "695db8335e33de3d403b3d1f0425970f3710a9db4a528ec460199055ef1e8ab8";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
