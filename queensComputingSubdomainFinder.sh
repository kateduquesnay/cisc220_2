#Assignment 2
#Sarah Carter 10193595
#Katherine DuQuesnay 10138898
#Adele McCallum 10093867
#Dean Wilkins-Reeves 10176758
# git clone https://github.com/kateduquesnay/cisc220_2.git cisc220_2

#Question 4


#only loop within these ip addresses
for ip in seq 130.15.0.0 130.15.255.255
do 

#Get subdomain names within these ip restrictions
subDomains = nslookup <$ip>


printf "%-20s | %-20s" "$ip" "$subDomains"


done #end for

