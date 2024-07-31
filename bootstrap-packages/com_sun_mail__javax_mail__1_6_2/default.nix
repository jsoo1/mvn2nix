{
  lib
, pkgs
, patchMavenJar
, com_sun_mail__all__pom__1_6_2
, net_java__jvnet-parent__pom__1
, javax_activation__activation__1_1
}:
patchMavenJar {
  name = "com.sun.mail:javax.mail:1.6.2";
  groupId = "com.sun.mail";
  artifactId = "javax.mail";
  version = "1.6.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/sun/mail/javax.mail/1.6.2/javax.mail-1.6.2.jar";
        sha256 = "45b515e7104944c09e45b9c7bb1ce5dff640486374852dd2b2e80cc3752dfa11";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/sun/mail/javax.mail/1.6.2/javax.mail-1.6.2.pom";
        sha256 = "c4229c05b5836f002521363d3435f3d072662744548bf17e7e7adecafe68b9fd";
      };
    }
  ];
  dependencies = [
    {
      drv = com_sun_mail__all__pom__1_6_2;
      scope = "test";
      optional = false;
    }
    {
      drv = net_java__jvnet-parent__pom__1;
      scope = "test";
      optional = false;
    }
    {
      drv = javax_activation__activation__1_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
