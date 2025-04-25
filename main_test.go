package main

import "testing"

func TestBasic(t *testing.T) {
    got := 1 + 1
    want := 2
    if got != want {
        t.Errorf("Esperava %d, mas obteve %d", want, got)
    }
}

