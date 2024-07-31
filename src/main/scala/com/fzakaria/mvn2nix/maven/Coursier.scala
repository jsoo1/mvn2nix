package com.fzakaria.mvn2nix.maven

import coursier._
import coursier.core.Configuration
import coursier.core.compatibility.xmlParseSax
import org.apache.maven.model.Model
import scala.jdk.OptionConverters._
import scala.jdk.CollectionConverters._

import java.nio.file.Path
import java.io.File

object Coursier {
  def resolvePOM(
      pom: Model,
      resolveRoots: Boolean
  ): java.util.Map[Dependency, Res] = {
    val todo: Seq[Dependency] = if (resolveRoots) {
      val self = mavenToCoursier(pom)
      self :: self.withPublication(pom.getArtifactId(), Type.pom) :: Nil
    } else {
      pom
        .getDependencies()
        .asScala
        .toSeq
        .flatMap(d => {
          val self = mavenToCoursier(d)
          self :: self.withPublication(d.getArtifactId(), Type.pom) :: Nil
        })
    }

    // FIXME(jsoo1): We can't actually get all transitive POMs, but we
    // want them! See:
    // https://github.com/coursier/coursier/issues/2029
    val fetched = Fetch()
      .withDependencies(todo)
      .allArtifactTypes()
      .mapResolutionParams(params =>
        params
          .withKeepOptionalDependencies(true)
          .withKeepProvidedDependencies(Some(true))
          .addReconciliation(
            (util.ModuleMatchers.all, core.Reconciliation.Relaxed)
          )
      )
      .runResult()

    val m = fetched.resolution.minDependencies
      .map((d: Dependency) => {
        val a: Seq[(core.Publication, util.Artifact, File)] =
          fetched.detailedArtifacts
            .flatMap(_ match {
              case (d2, p, a, f) =>
                if (d.module == d2.module && d.version == d2.version) {
                  (p, a, f) :: Nil
                } else { Nil }
            })
            .toSet
            .toSeq

        val ds = fetched.resolution.dependenciesOf(d, true)

        (d, new Res(ds.asJava, a.asJava))
      })
      .filter(_ match {
        case (d, _) => d.publication.`type` != Type.pom
      })

    m.toMap.asJava
  }

  class Res(
      val dependencies: java.util.List[Dependency],
      val artifacts: java.util.List[(core.Publication, util.Artifact, File)]
  )

  def mavenToCoursier(d: org.apache.maven.model.Dependency): Dependency =
    Dependency(
      Module(
        Organization(d.getGroupId()),
        new ModuleName(d.getArtifactId()),
        Map.empty
      ),
      d.getVersion()
    ).withConfiguration(Configuration(d.getScope()))

  def mavenToCoursier(d: org.apache.maven.model.Model): Dependency =
    Dependency(
      Module(
        Organization(d.getGroupId()),
        new ModuleName(d.getArtifactId()),
        Map.empty
      ),
      d.getVersion()
    )
}
