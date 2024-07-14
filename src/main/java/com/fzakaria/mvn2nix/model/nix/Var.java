package com.fzakaria.mvn2nix.model.nix;

import java.io.BufferedWriter;
import java.io.IOException;

public class Var extends Expr implements Write {
    public final String var;

    public Var(String v) {
        var = v;
    }

    @Override
    public void write(int ind, BufferedWriter w) throws IOException {
        w.write(var);
    }
}
