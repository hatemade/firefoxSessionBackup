# Firefox Session Backup
Firefox sessionsstore backup perl script for windows.  
Firefoxのsessionstore.jsを実行時毎にバックアップするperlのスクリプト。  
必要になった際にバックアップされたファイルとsessionstore.jsを入れ替え復元するが、必ずうまくいくわけではない。  
うまくいかない場合、"state":の値を"running"か"stopped"に変更すると成功する場合がある。  

## Configuration
set install directory path in FoxSessionBackup.bat  

    cd *install directory*

set your Firefox sessionstore.js path  

    my $orig_file = '*your sessionstore.js path*\sessionstore.js';

