binornd(10,0.4,20,1) #X-B(10,0.4)
normrnd(1,2,15) #Y-N(1,2)
discrete_rnd(1:6, ones(1,6),20,1)
exprnd(1/3,40,1) #Z-exp(3)

binopdf(3,10,0.4) #P(X=3)
normpdf(3,1,2) #fy(3)

binocdf(6,10,0.4) #Fx(6) = P(X<=6)
normcdf(1,1,2) #Fy(1)=P(Y<=1)

#Z-N(0,1)
# P(Z>z0.05)=0.05
# P(Z<=z0.05)=0.95=Fz(z0.05)
# Fz^(-1) (Fz(z0.05))=Fz^(-1) (0.95)
norminv(0.95,0,1) #z0.05 =Fz^(-1) (0.95)
