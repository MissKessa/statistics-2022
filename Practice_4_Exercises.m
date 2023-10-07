#4.1____________________
#a)
p1=t_test(A,0.65) #=0; reject null hypothesis
#b)
p2=z_test(A,0.65,0.02)#=0.36887; not enough evidence

#4.2____________________
#a)
p1=t_test(A,40,">") #=0.086073; not enough evidence
#b)
stat=(length(A)-1)*var(A)/100#=105.93319
fr=chi2inv(0.05,length(A)-1)#=59.522
#not enough evidence (stat>fr)

#4.3____________________
#a)
p1=t_test(A,20,"<s") #=0.28619; not enough evidence
#b)
stat=(length(A)-1)*var(A)/8^2 #=1.2847
fr1=chi2inv(0.025,length(A)-1)#=14.573
fr2=chi2inv(0.975,length(A)-1)#=43.195
