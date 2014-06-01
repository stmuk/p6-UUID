use v6;

use Test;
use UUID;

my $u = UUID.new();
is $u.gen_arr(4), True, "did stuff";

done;
