{
  lib
, pkgs
, patchMavenJar
, org_apiguardian__apiguardian-api__1_1_0
}:
patchMavenJar {
  name = "org.junit.platform:junit-platform-commons:1.6.2";
  groupId = "org.junit.platform";
  artifactId = "junit-platform-commons";
  version = "1.6.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/junit/platform/junit-platform-commons/1.6.2/junit-platform-commons-1.6.2.jar";
        sha256 = "341621f4d998fd7b539b38baa7e1a3da80b7cac00b983e6206b01c9290915fe9";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/junit/platform/junit-platform-commons/1.6.2/junit-platform-commons-1.6.2.pom";
        sha256 = "c5d762d66dfea70f38df383e70b7ca5cfd2f643f0cad188800994b7fb09fbc02";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apiguardian__apiguardian-api__1_1_0;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
