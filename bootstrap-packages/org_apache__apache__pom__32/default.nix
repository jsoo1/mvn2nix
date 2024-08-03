{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:32";
  groupId = "org.apache";
  artifactId = "apache";
  version = "32";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/apache/32/apache-32.pom";
      sha256 = "cfd872c0ec27f53ae68f43dbc0fecded8add773079a53afbd390e407b42ce72f";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
