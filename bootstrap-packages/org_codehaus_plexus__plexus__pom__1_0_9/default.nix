{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:1.0.9";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "1.0.9";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/1.0.9/plexus-1.0.9.pom";
        sha256 = "11a987607957fcac04d6ac182308abf5a7d3707f519863e55c8eb419953f5374";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
