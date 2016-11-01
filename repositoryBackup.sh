#Assignment 2
#Sarah Carter 10193595
#Katherine DuQuesnay 10138898
#Adele McCallum 10093867
#Dean Wilkins-Reeves 10176758
# git clone https://github.com/kateduquesnay/cisc220_2.git cisc220_2

#Question 2


#repositoryBackup.sh
#cron job: 00 1 * * * git clone https://github.com/kateduquesnay/cisc220_2 cisc220_2

#import the github URL:
echo "type the url of your repository: "
read $urll
#chose the folder to be edited
echo "type the name of your local folder: "
read $folder
#import git username and password 
git config --global user.name
git config --global user.email

#create a date and time variable based on when the cron job runs??? for naming??
#name the file based on the date: backupYYMMDDHH.tgz
now=$(date +"%y%m%d%h")
#run crontab
crontab -e
00 1 * * * git clone $urll $folder
#create file from local repository
cd $folder 
git add backup$now.tgz
echo "Backup backup$now.tgz created successfully!"
#commit backup to local repository
git commit -m 'my first commit'
echo "Backup backup$now.tgz committed to the local git repository"
#Check-in (push) your local copy of the backup file to rremote repository
git pull
git push origin master
echo "Backup backup$now.tgz pushed to the remote git repository $folder"



