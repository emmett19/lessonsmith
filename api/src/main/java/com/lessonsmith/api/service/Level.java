package com.lessonsmith.api.service;

public enum Level {
    CP,
    CK,
    ET1,
    ET2,
    PowerUp1,
    PowerUp2,
    CL,
    PowerUp3,
    JNCE,
    THINK,
    TALENT;

    public static int distance(Level a, Level b) {
        return Math.abs(a.ordinal() - b.ordinal());
    }
}
