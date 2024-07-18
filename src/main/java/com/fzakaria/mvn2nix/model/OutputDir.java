package com.fzakaria.mvn2nix.model;

import com.fzakaria.mvn2nix.model.nix.Expr;

import java.io.IOException;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.nio.file.Path;
import java.nio.file.Files;
import java.util.Map;

public class OutputDir {
    public final Expr defaultNix;
    public final Map<Path, Expr> pkgs;

    public OutputDir(Expr e, Map<Path, Expr> ps) {
        defaultNix = e;
        pkgs = ps;
    }

    public void write(Path outDir) throws IOException {
        write(outDir, defaultNix);

        for (Map.Entry<Path, Expr> e: pkgs.entrySet()) {
            write(outDir.resolve(e.getKey()), e.getValue());
        }
    }

    public void write(Path outDir, Expr e) throws IOException {
        Files.createDirectory(outDir);

        File defaultFile = outDir.resolve("default.nix").toFile();

        BufferedWriter w = new BufferedWriter(new FileWriter(defaultFile));

        e.write(0, w);

        w.flush();
    }
}
