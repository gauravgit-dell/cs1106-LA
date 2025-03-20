mkdir ~/documents/backup
cp *.c ~/Documents/backup/
cd ~/Documents
tar -czf backup.tar.gz backup
rm -r backup

