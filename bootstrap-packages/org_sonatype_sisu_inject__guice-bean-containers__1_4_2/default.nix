{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__1
, org_sonatype_sisu_inject__guice-bean__pom__1_4_2
, org_sonatype_sisu_inject__guice-bean-reflect__1_4_2
, org_sonatype_sisu_inject__guice-bean-inject__1_4_2
, org_sonatype_sisu_inject__guice-bean-scanners__1_4_2
, org_osgi__org_osgi_core__4_2_0
, junit__junit__3_8_2
, org_osgi__org_osgi_compendium__4_2_0
, asm__asm__3_2
, org_sonatype_sisu_inject__guice-bean-locators__1_4_2
, org_sonatype_sisu_inject__guice-bean-binders__1_4_2
, org_sonatype_sisu_inject__guice-bean-converters__1_4_2
, org_sonatype_sisu__sisu-parent__pom__1_4_2
, org_sonatype_forge__forge-parent__pom__6
, org_sonatype_sisu__sisu-inject__pom__1_4_2
, org_sonatype_sisu__sisu-guice__2_1_7
, aopalliance__aopalliance__1_0
}:
patchMavenJar {
  name = "org.sonatype.sisu.inject:guice-bean-containers:1.4.2";
  groupId = "org.sonatype.sisu.inject";
  artifactId = "guice-bean-containers";
  version = "1.4.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guice-bean-containers/1.4.2/guice-bean-containers-1.4.2.jar";
        sha256 = "914d99da639bbbbcc81017f22e259b6b1f98cb8f4e2a9bc25a06cb90c618cd8b";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guice-bean-containers/1.4.2/guice-bean-containers-1.4.2.pom";
        sha256 = "69630b5234cb1dc1bc6c3b69fa806f24ed6c18ba95ae7f64cd59faeae4ace340";
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
      drv = org_sonatype_sisu_inject__guice-bean__pom__1_4_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-reflect__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-inject__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-scanners__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_osgi__org_osgi_core__4_2_0;
      scope = "compile";
      optional = true;
    }
    {
      drv = junit__junit__3_8_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_osgi__org_osgi_compendium__4_2_0;
      scope = "compile";
      optional = true;
    }
    {
      drv = asm__asm__3_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-locators__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-binders__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-converters__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-parent__pom__1_4_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_forge__forge-parent__pom__6;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-inject__pom__1_4_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__2_1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = aopalliance__aopalliance__1_0;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
