package com.fzakaria.mvn2nix.model.nix;

import java.io.BufferedWriter;
import java.io.IOException;

public class Fn extends Expr implements Write {
    Param param;
    Expr body;

    public Fn(Param params, Expr body) {
        param = param;
        body = body;
    }

    @Override
    public void write(int ind, BufferedWriter w) throws IOException {
        param.write(ind, w); w.write(": "); body.write(ind, w);
    }
}
