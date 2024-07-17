package com.fzakaria.mvn2nix.model.nix;

public class Null extends Expr implements Write {
    public Null() {
    }

    @Override
    public void write(int indent, java.io.BufferedWriter w) throws java.io.IOException {
        w.write("null");
    }
}
