$string ="This to_value is a to_value a test";
$find = "to_value";
$replace = "To";

$string = join( $replace, split($find, $string) );

print $string;