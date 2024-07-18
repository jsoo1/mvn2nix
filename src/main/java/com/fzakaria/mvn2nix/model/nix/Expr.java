package com.fzakaria.mvn2nix.model.nix;

import java.util.Map;
import java.util.TreeMap;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/*
  A _very limited_ subset of a (poorly understood) nix ast. We only
  need enough to generate enough to make some functions for
  callPackage. No effort made to replicate a pretty-printer. Use of a
  formatter is encouraged.
 */
public abstract class Expr extends Indent implements Write {
    public static int INDENT_WIDTH = 2;

    public static <T> T snd(T x1, T x2) {
        return x2;
    }
}
