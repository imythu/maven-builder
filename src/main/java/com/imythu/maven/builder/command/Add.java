package com.imythu.maven.builder.command;

import org.springframework.shell.standard.ShellComponent;
import org.springframework.shell.standard.ShellMethod;

/**
 * @author zhuhf
 */
@ShellComponent
public class Add {

    @ShellMethod("两数相加")
    public int add(int a, int b) {
        return a + b;
    }
}
