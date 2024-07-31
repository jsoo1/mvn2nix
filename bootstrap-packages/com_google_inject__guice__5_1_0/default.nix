{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__1
, org_ow2_asm__asm__9_2
, com_google__google__pom__5
, com_google_inject__guice-parent__pom__5_1_0
}:
patchMavenJar {
  name = "com.google.inject:guice:5.1.0";
  groupId = "com.google.inject";
  artifactId = "guice";
  version = "5.1.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/inject/guice/5.1.0/guice-5.1.0.jar";
        sha256 = "4130e50bfac48099c860f0d903b91860c81a249c90f38245f8fed58fc817bc26";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/inject/guice/5.1.0/guice-5.1.0.pom";
        sha256 = "b3b8dc65213d623fb70ed7958dbdd616324256ba836a31652560c388999fd9cd";
      };
    }
  ];
  dependencies = [
    {
      drv = javax_inject__javax_inject__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_ow2_asm__asm__9_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = com_google__google__pom__5;
      scope = "test";
      optional = false;
    }
    {
      drv = com_google_inject__guice-parent__pom__5_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
