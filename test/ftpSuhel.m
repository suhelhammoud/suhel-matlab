function ftpSuhel()
tmw=ftp('ftp.suheil.co.uk','suhel','pw');
 cd (tmw,'httpdocs/drupal/files')
 mget(tmw,'P4190066.JPG')
end
