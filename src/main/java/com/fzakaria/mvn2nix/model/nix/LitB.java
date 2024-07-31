package com.fzakaria.mvn2nix.model.nix;

import java.io.BufferedWriter;
import java.io.IOException;

public class LitB extends Expr implements Write {
    public final boolean val;

    public LitB(boolean b) {
        val = b;
    }

    @Override
    public void write(int ind, BufferedWriter w) throws IOException {
        w.write(val ? "true" : "false");
    }
}
