DATABASE='sakila'
echo "Pulling Database: This may take a few minutes"

backupfolder=/home/theia/backups
keep_day=30

sqlfile=$backupfolder/all-database-$(date +%d-%m-%Y_%H-%M-%S).sql
zipfile=$backupfolder/all-database-$(date +%d-%m-%Y_%H-%M-%S).gz

if mysqldump  $DATABASE > $sqlfile ; then
   echo 'Sql dump created'
    # Compress backup 
    if gzip -c $sqlfile > $zipfile; then
        echo 'The backup was successfully compressed'
    else
        echo 'Error compressing backupBackup was not created!' 
        exit
    fi
    rm $sqlfile 
else
   echo 'pg_dump return non-zero code No backup was created!' 
   exit
fi

find $backupfolder -mtime +$keep_day -delete