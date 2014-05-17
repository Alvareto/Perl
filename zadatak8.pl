my $w = "(.+?)";
my %count;
while (<>) {
	# 89.172.5.200 - - [24/Feb/2008:00:00:21 +0100] "GET /burza/b/Logout.action?ciid=26 HTTP/1.1" 302 -
	$_ =~ m/^$w $w$/;
	# IP = $1	
	$count{$1}++;
}

for my $key ( sort keys %count ) {
	printf "%s : %d\n", $key, $count{$key};
}