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

    val artifacts: Seq[(Dependency, Seq[(util.Artifact, Option[File])])] =
      fetched.resolution
        .dependencyArtifacts(true)
        .map((x: (Dependency, util.Artifact)) =>
          (
            x._1,
            fetched.fullArtifacts
              .filter((y: (util.Artifact, Option[File])) => x._1 == y._2)
          )
        )

    val m: Map[
      Dependency,
      (Seq[Dependency], Seq[(util.Artifact, Option[File])])
    ] =
      fetched.resolution.finalDependenciesCache.map(
        (x: (Dependency, Seq[Dependency])) =>
          (
            x._1,
            (
              x._2,
              artifacts.flatMap(
                (y: (Dependency, Seq[(util.Artifact, Option[File])])) =>
                  if (x._1 == y._1) { y._2 }
                  else { Nil }
              )
            )
          )
      )

    m.map(
      (x: (
          Dependency,
          (Seq[Dependency], Seq[(util.Artifact, Option[File])])
      )) =>
        (
          x._1,
          new Res(
            x._2._1.asJava,
            x._2._2.map(y => (y._1, y._2.asJava)).asJava
          )
        )
    ).asJava
  }

  class Res(
      val dependencies: java.util.List[Dependency],
      val artifacts: java.util.List[
        (util.Artifact, java.util.Optional[File])
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
