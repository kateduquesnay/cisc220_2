#Assignment 2
#Sarah Carter 10193595
#Katherine DuQuesnay 10138898
#Adele McCallum 10093867
#Dean Wilkins-Reeves 10176758
# git clone https://github.com/kateduquesnay/cisc220_2.git cisc220_2

#Question 2


#repositoryBackup.sh
#read 


#cron job:

#in loop?
crontab -e
00 1 * * * git clone https://github.com/kateduquesnay/cisc220_2 Assignment 2
#name the file based on the date: backupYYMMDDHH.tgz

#import the path to the repository folder: 
#
#import the github URL:
#read https://github.com/kateduquesnay/cisc220_2 ??
#import git username and password 

#create a date and time variable based on when the cron job runs??? for naming??

#Commit the new backup file to the local git repository 
  #git clone "https://github.com/kateduquesnay/cisc220_2"
  #cd git-backup
#Push the new backup file to your remote git repository 
git push https://AdeleMcCallum:jenny1234@github.com/repoURL.git --all
  

#output redirected to the backupsLog file
#echo Backup (backupYYYYMMDDHH.tgz) created successfully!
#echo Backup (backupYYYYMMDDHH.tgz) committed to the local git repository
#echo Backup (backupYYYYMMDDHH.tgz) pushed to the remote git repository cisc220_2

