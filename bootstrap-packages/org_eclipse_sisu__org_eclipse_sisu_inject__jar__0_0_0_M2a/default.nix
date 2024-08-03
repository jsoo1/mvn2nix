{
  lib
, pkgs
, patchMavenJar
, com_google_inject__guice__jar__3_0
, javax_inject__javax_inject__jar__1
, aopalliance__aopalliance__jar__1_0
, asm__asm__jar__3_3_1
, org_eclipse_sisu__org_eclipse_sisu_inject__pom__0_0_0_M2a
}:
patchMavenJar {
  name = "org.eclipse.sisu:org.eclipse.sisu.inject:jar:0.0.0.M2a";
  groupId = "org.eclipse.sisu";
  artifactId = "org.eclipse.sisu.inject";
  version = "0.0.0.M2a";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.inject/0.0.0.M2a/org.eclipse.sisu.inject-0.0.0.M2a.jar";
      sha256 = "3e745c61748a4780839cbc6c0b10854abae3be26f3cf283a00bc002d2ed98bd1";
    };
  };
  dependencies = [
    {
      drv = com_google_inject__guice__jar__3_0;
      scope = "compile";
      optional = false;
    }
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
      drv = asm__asm__jar__3_3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__pom__0_0_0_M2a;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
