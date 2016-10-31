#Assignment 2
#Sarah Carter 10193595
#Katherine DuQuesnay 10138898
#Adele McCallum 10093867
#Dean Wilkins-Reeves 10176758
# git clone https://github.com/kateduquesnay/cisc220_2.git cisc220_2

#Question 1
#!/bin/bash
processesTree(i, tree)
#Print Tree of all active processes until init daemon is reached
for i processesTree(i); do  
#use ps command
#Recursive function to display each child 
  if process A pid == process B ppid then
  ps axo comm,pid,ppid,start,user | grep -9 -e (PID=i) == (PPID=i);
  tree=pstree i;
  processesTree(i+1, tree);
  fi
done
#parse output to output in assignment

