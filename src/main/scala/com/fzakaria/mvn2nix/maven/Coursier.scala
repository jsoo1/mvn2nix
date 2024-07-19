package com.fzakaria.mvn2nix.maven

import coursier._
import coursier.maven.PomParser
import coursier.core.compatibility.xmlParseSax
import scala.jdk.javaapi.CollectionConverters
import scala.jdk.OptionConverters._

import java.nio.file.Path
import java.io.File

object Coursier {
  def resolvePOM(pom: Path): java.util.Map[Dependency, Res] = {
    val proj = readPOM(pom)

    val fetched =
      Fetch().withDependencies(proj.dependencies.map(_._2)).runResult()

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

    CollectionConverters.mapAsJavaMap(
      m.map(
        (x: (
            Dependency,
            (Seq[Dependency], Seq[(util.Artifact, Option[File])])
        )) =>
          (
            x._1,
            new Res(
              CollectionConverters.seqAsJavaList(x._2._1),
              CollectionConverters.seqAsJavaList(
                x._2._2.map(y => (y._1, y._2.asJava))
              )
            )
          )
      )
    )
  }

  def readPOM(pom: java.nio.file.Path): Project = {
    val src = scala.io.Source.fromFile(pom.toFile())

    try {
      val contents = src.mkString

      val project = xmlParseSax(contents, new PomParser).project match {
        case Left(e)        => throw new java.io.IOException(e)
        case Right(project) => project
      }

      project
    } finally {
      src.close()
    }
  }

  class Res(
      val dependencies: java.util.List[Dependency],
      val artifacts: java.util.List[
        (util.Artifact, java.util.Optional[File])
      ]
  )
}
