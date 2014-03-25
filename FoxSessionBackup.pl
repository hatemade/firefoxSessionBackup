use File::Copy 'copy';

#ファイル名設定
#set your firefox sessionstore.js path
my $orig_file = '\sessionstore.js';
my $copy_file = "sessionstore.bak";
my $log_file = "log.txt";

#日付
($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime();
my $date = sprintf("%04d.%02d.%02d.%02d", $year + 1900, $mon + 1, $mday, $hour);

#実行とログ書込
open(FH, ">>$log_file");
if (copy $orig_file, $copy_file.'.'.$date) {
	print FH $date." write order is complete.\r\n";
}
else {
	print FH $date." disorder... [".$!."]\r\n";
}
close(FH);

