#!/usr/bin/env perl6
# https://en.wikipedia.org/wiki/UUID
# WIP

use v6;

class UUID {

  method gen_arr ($ver) {
    my @pos = (8,5,5,5,13);
    my @array;
    for 0..3 -> $i {
      @array[$i] = (1+(rand*2**32)).ceiling.fmt("%08X");
    }
    my @str = @array.join("").split("");
    @str[12]=$ver;
    @str[16]=((:16(@str[16]) +| :2<1000>) +&:2<1011>).fmt("%X");
    my @uuid;
    for @pos -> $p {
      my @i = @str.splice(0,$p,"");
      my $i = @i.join("");
      @uuid.push([$i]);
    }
    say @uuid.join("-");
  }
}
