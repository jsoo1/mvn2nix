package com.fzakaria.mvn2nix.model.nix;

import java.io.BufferedWriter;
import java.io.IOException;
import java.util.List;
import java.util.Set;
import java.util.stream.Stream;
import java.util.stream.Collectors;

public class LitL extends Expr implements Write {
    public final List<Expr> vals;

    public LitL(Stream<Expr> vs) {
        vals = vs.collect(Collectors.toList());
    }

    public LitL(Expr[] vs) {
        vals = java.util.Arrays.asList(vs);
    }

    @Override
    public void write(int ind, BufferedWriter w) throws IOException {
        w.write("[");

        for (Expr v: vals) {
            indent(ind + INDENT_WIDTH, w); v.write(ind + INDENT_WIDTH, w);
        }

        if (vals.size() != 0) {
            indent(ind, w);
        } else {
            w.write(" ");
        }

        w.write("]");
    }
}
