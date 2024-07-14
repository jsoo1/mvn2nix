package com.fzakaria.mvn2nix.model.nix;

import java.io.BufferedWriter;
import java.io.IOException;

public class App extends Expr implements Write {
    public final Expr f;
    public final Expr x;

    public App(Expr fn, Expr exp) {
        f = fn;
        x = exp;
    }

    @Override
    public void write(int ind, BufferedWriter w) throws IOException {
        f.write(ind, w); w.write(" "); x.write(ind, w);
    }
}
