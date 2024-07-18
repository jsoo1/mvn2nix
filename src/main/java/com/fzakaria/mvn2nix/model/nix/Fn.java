package com.fzakaria.mvn2nix.model.nix;

import java.io.BufferedWriter;
import java.io.IOException;

public class Fn extends Expr implements Write {
    Param param;
    Expr body;

    public Fn(Param p, Expr b) {
        param = p;
        body = b;
    }

    @Override
    public void write(int ind, BufferedWriter w) throws IOException {
        param.write(ind, w); w.write(":"); w.newLine(); indent(ind, w); body.write(ind, w);
    }
}
