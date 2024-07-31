{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:11";
  groupId = "org.apache";
  artifactId = "apache";
  version = "11";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/apache/11/apache-11.pom";
        sha256 = "9a4fb5addb41d8116b6441e9e3c48764d9cc562243d5608652bea6db0509297b";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
