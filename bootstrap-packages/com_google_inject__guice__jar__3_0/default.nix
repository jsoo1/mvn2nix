{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__jar__1
, aopalliance__aopalliance__jar__1_0
, com_google_inject__guice__pom__3_0
}:
patchMavenJar {
  name = "com.google.inject:guice:jar:3.0";
  groupId = "com.google.inject";
  artifactId = "guice";
  version = "3.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/inject/guice/3.0/guice-3.0.jar";
      sha256 = "1a59d0421ffd355cc0b70b42df1c2e9af744c8a2d0c92da379f5fca2f07f1d22";
    };
  };
  dependencies = [
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = aopalliance__aopalliance__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_inject__guice__pom__3_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
