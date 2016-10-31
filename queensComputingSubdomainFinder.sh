#Assignment 2
#Sarah Carter 10193595
#Katherine DuQuesnay 10138898
#Adele McCallum 10093867
#Dean Wilkins-Reeves 10176758
# git clone https://github.com/kateduquesnay/cisc220_2.git cisc220_2

#Question 4

#outside the loop: titles for the ip/subdomain columns
printf "%-20s | %-20s" "Ip Address" "Sub-Domain"

#only execute within these addresses
for ip in 130.15.{0..255}.{0..255}
do 

#Get subdomain names within these ip restrictions
subDomains = nslookup $ip

#Print into 2 columns
printf "%-20s | %-20s" "$ip" "$subDomains"


done #end for

