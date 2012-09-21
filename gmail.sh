#/bin/bash
username=
read -p "Enter your gmail username: " username
curl -u $username --silent "https://mail.google.com/mail/feed/atom" |\
perl -ne 'print "\t" if /<name>/; print "$2\n" if /<(title|name)>(.*)<\/\1>/;'