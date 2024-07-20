package com.fzakaria.mvn2nix.maven

import coursier._
import coursier.core.compatibility.xmlParseSax
import org.apache.maven.model.Model
import scala.jdk.OptionConverters._
import scala.collection.JavaConverters._

import java.nio.file.Path
import java.io.File

object Coursier {
  def resolvePOM(pom: Model): java.util.Map[Dependency, Res] = {
    val dependencies: Seq[Dependency] = pom
      .getDependencies()
      .asScala
      .map(mavenToCoursier(_))

    val fetched =
      Fetch().withDependencies(dependencies).runResult()

    val m = fetched.resolution.minDependencies.map((d: Dependency) => {
      val a: Seq[(core.Publication, util.Artifact, java.util.Optional[File])] = fetched.fullDetailedArtifacts
        .flatMap(_ match {
          case (d2, p, a, f) =>
            if (d == d2) { (p, a, f.asJava) :: Nil }
            else { Nil }
        })

      val ds = fetched.resolution.dependenciesOf(d, true)

      (d, new Res(ds.asJava, a.asJava))
    })

    m.toMap.asJava
  }
  class Res(
      val dependencies: java.util.List[Dependency],
      val artifacts: java.util.List[
        (core.Publication, util.Artifact, java.util.Optional[File])
      ]
  )

  def mavenToCoursier(d: org.apache.maven.model.Dependency): Dependency = {
    Dependency(
      Module(
        Organization(d.getGroupId()),
        new ModuleName(d.getArtifactId()),
        Map.empty
      ),
      d.getVersion()
    )
  }
}
