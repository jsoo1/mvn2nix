{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.osgi:org.osgi.core:4.2.0";
  groupId = "org.osgi";
  artifactId = "org.osgi.core";
  version = "4.2.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/osgi/org.osgi.core/4.2.0/org.osgi.core-4.2.0.jar";
        sha256 = "f61afff1c8ea076b1fb0f935f832bdd2ad7ed5d087ba00bf42606514c2ffe8b4";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/osgi/org.osgi.core/4.2.0/org.osgi.core-4.2.0.pom";
        sha256 = "f015ce97d94f46b4299eb31a6b26fbb18a317e3b83918969d209fd1b06216457";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
