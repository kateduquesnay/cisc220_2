#Assignment 2
#Sarah Carter 10193595
#Katherine DuQuesnay 10138898
#Adele McCallum 10093867
#Dean Wilkins-Reeves 10176758
# git clone https://github.com/kateduquesnay/cisc220_2.git cisc220_2

#Question 4

#Loop through ips from 0.0 to 255.255

#only perform 
while ip in seq 130.15.0.0 130.15.255.255
do 

for i in $#
do
#Get domain names within these ip restrictions
donslookup <$ip>
#strip sundomains from this list


done #end for



done #end while

