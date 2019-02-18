echo "<html><head><style> body {"
echo "background-color: $COLOR;"
echo "} p {background-color: #FFFFFF;}"
echo "</style></head><body>"

echo '<p><font color="red">IP Addresses:</font></p><p>'
ifconfig | egrep -o "^[a-z0-9]+|addr:[0-9\.]+" | sed "s/$/<p>/"
echo "<p>"
echo '<font color="red">Hostname</font><p>'
cat /etc/hostname
echo "<p>"
echo "</body></html>"
