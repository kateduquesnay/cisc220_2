#Assignment 2
#Sarah Carter 10193595
#Katherine DuQuesnay 10138898
#Adele McCallum 10093867
#Dean Wilkins-Reeves 10176758
# git clone https://github.com/kateduquesnay/cisc220_2.git cisc220_2

#Question 4

#Loop through ips from 00 to 255.255

for ip in 130.15.{32..47}.{0..255}
do
        echo 130.15.{00..00}.{255..255} | grep -q "\<$ip\>" && continue
        echo "<ip>${ip}</ip>" 
done

