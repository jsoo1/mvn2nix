package com.fzakaria.mvn2nix.model.nix;

import java.io.BufferedWriter;
import java.io.IOException;
import java.util.List;

public class LitL extends Expr implements Write {
    public final Expr[] vals;

    public LitL(Expr[] vs) {
        vals = vs;
    }

    @Override
    public void write(int ind, BufferedWriter w) throws IOException {
        w.write("[");

        for (Expr v: vals) {
            indent(ind + INDENT_WIDTH, w); v.write(ind, w);
        }

        if (vals.length != 0) {
            indent(ind, w);
        } else {
            w.write(" ");
        }

        w.write("]");
    }
}
