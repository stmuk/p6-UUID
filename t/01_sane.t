use v6;

BEGIN { @*INC.unshift( 'lib' ) }

use Test;
use UUID;

my $u = UUID.new();
is $u.gen_arr(4), True, "did stuff";

done;
