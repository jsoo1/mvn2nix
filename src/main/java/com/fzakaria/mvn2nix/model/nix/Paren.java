package com.fzakaria.mvn2nix.model.nix;

public class Paren extends Expr implements Write {
    public final Expr expr;

    public Paren(Expr e) {
        expr = e;
    }

    @Override
    public void write(int ind, java.io.BufferedWriter w) throws java.io.IOException {
        w.write("("); expr.write(ind, w); w.write(")");
    }
}
