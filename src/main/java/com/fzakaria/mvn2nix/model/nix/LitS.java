package com.fzakaria.mvn2nix.model.nix;

import java.io.BufferedWriter;
import java.io.IOException;

public class LitS extends Expr implements Write {
    public final String val;

    public LitS(String s) {
        val = s;
    }

    @Override
    public void write(int ind, BufferedWriter w) throws IOException {
        w.write("\""); w.write(val); w.write("\"");
    }
}
