use Filesys::DiskSpace;

my $space_limit = 5;

my $dir = "/usr";

# get data for /home fs
my ($fs_type, $fs_desc, $used, $avail, $fused, $favail) = df $dir;

# calculate free space in %
my $df_free = (($avail) / ($avail+$used)) * 100.0;

# display message
print $df_free 
 
   print "Content-type: text/html\n";
    print "\n";

