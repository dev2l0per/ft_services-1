rc-service nginx status
ps_1=$?
pgrep telegraf
ps_2=$?
rc-service php-fpm7 status
ps_3=$?
ps > ps_log
grep '\[*\]' ps_log
ps_log=$?
if [ $ps_1 -eq 0 ] && $ps_1 -eq 0 ] && [ $ps_3 -eq 0 ] && [ $ps_log -eq 1 ]; then
        exit 0;
fi
exit 1;