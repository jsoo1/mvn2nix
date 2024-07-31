{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__9
}:
patchMavenJar {
  name = "com.thoughtworks.qdox:qdox:2.0-M9";
  groupId = "com.thoughtworks.qdox";
  artifactId = "qdox";
  version = "2.0-M9";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/thoughtworks/qdox/qdox/2.0-M9/qdox-2.0-M9.jar";
        sha256 = "ee2f7fa60b6ef3151f1bb0a242e0bacb832ff29f3ee8fd3da61d26d8608bc1bc";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/thoughtworks/qdox/qdox/2.0-M9/qdox-2.0-M9.pom";
        sha256 = "8fb39a1e86ee1dca54680df79512ff2939eba17660f62e142b2b9df699b3b6a3";
      };
    }
  ];
  dependencies = [
    {
      drv = org_sonatype_oss__oss-parent__pom__9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
