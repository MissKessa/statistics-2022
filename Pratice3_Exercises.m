# 3.1_____________________________________
A=discrete_rnd(1:6, ones(1,6),20,1) #simulate the throws
empirical_cdf(4,A) #propotion of values <=4
table(A)/200 #propotion of each value

# 3.2_____________________________________
# As a discrete random variable:
A=discrete_rnd([0,1], [6,4], ones(1,6),20,1)
mean(A) #= table(A)/length(A) proportion of tails

#taking the second value of the output (the 1º value is in relation to number 0).
#We can simulate the throws of the coin with the Bernoulli distribution with 
#parameters 0.4 (or binomial with parameters 1 and 0.4). Note that it takes the
#value 1 (tail) with probabilty 0.4, and the value 0 (head) with probability 0.6.
A=binord(1,0.4,1000,1)
mean(A) %=table(A)/length(A). the proportion of ones (tails)

# 3.3_____________________________________
A= discrete_rnd([1:6], [0.2,0.15,0.15,0.3,0.1,0.1],500,1)

# 3.4_____________________________________
