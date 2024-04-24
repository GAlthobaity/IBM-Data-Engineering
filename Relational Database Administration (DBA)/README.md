# Automating MySQL Database Tasks Using Shell Scripts
This repository contains shell scripts that automate tasks related to a MySQL database. The scripts allow you to perform database backups, create cron jobs for automated backups, and truncate tables.

# Database
For this project, we are using the Sakila Sample Database provided by MySQL. You can find more information about it [here](https://dev.mysql.com/doc/sakila/en/).

# Scripts Descriptions
## Backup

To create a database backup, run the `sqlbackup.sh` script. The backup file will be saved with a timestamp in the specified backup folder. The script will also compress the backup file and delete older backups that exceed the defined retention period.

    It performs the following steps:

    1. The script pulls the database and creates an SQL file with a timestamp using the `mysqldump` command.
    2. It compresses the SQL file into a gzip file using the `gzip` command.
    3. The SQL file is then removed to save disk space.

## Truncate

To truncate all the tables in the database, execute the `truncate.sh` script. It will connect to the MySQL RDBMS, retrieve the table list, and truncate each table using the `TRUNCATE TABLE` statement.

    It performs the following steps:

    1. The script connects to the MySQL RDBMS using the provided credentials.
    2. It lists the tables in the database using the `show tables` command and iterates through each table.
    3. For each table, the script executes a `TRUNCATE TABLE` statement to delete all the data while keeping the table structure intact.




