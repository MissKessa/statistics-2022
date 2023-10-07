#2.1-----------------------------------------------------------
A

#2.2-----------------------------------------------------------
B=sortrows(A,-1); #male=0, female=1 -Sort in in descending order

#2.3-----------------------------------------------------------
W=B(1:9,:); #we extract from B the first 9 rows, where woman are

#2.4-----------------------------------------------------------
M=B(10:17,:);

#analysis of women:
CW=W(1:9,5); #= W(:,5) extract the cubic capacities (5th column) from the table of women
unique(CW); #obtain values in increasing order
table(CW); #obtain the absolute frequencies (ni)
 
table(CW)/length(CW); #relative frequencies (fi)
cumsum(table(CW)); #accumulated absolute frequencies (Ni)
cumsum(table(CW))/length(CW); #accumulated relative frequencies (Fi)

mean(CW);
median(CW);
statistics(CW);

#analysis of men:
CM=M(:,5); # extract the cubic capacities (5th column) from the table of women
unique(CM); #obtain values in increasing order
table(CM); #obtain the absolute frequencies (ni)
 
table(CM)/length(CM); #relative frequencies (fi)
cumsum(table(CM)); #accumulated absolute frequencies (Ni)
cumsum(table(CM))/length(CM); #accumulated relative frequencies (Fi)

mean(CM);
median(CM);
statistics(CM);

#2.5-----------------------------------------------------------
AgeMonths=12*A(:,2);
newA=A:
newA(:,2)=AgeMonths;

#2.6-----------------------------------------------------------
Age=A(:,2);
sumAges=sum(Age);
mean(Age);
meansq(Age);

#2.7-----------------------------------------------------------
AgeW=W(:,2);
std(AgeW,1);
var(AgeW,1);

AgeM=M(:,2);
std(AgeM,1);
var(AgeM,1);

#2.8-----------------------------------------------------------
iqr(Age);

#2.9-----------------------------------------------------------
quantile(Age,0.4,1,1);
quantile(Age,0.4,1,2);

quantile(Age,0.7,1,1);
quantile(Age,0.7,1,2);

#2.10-----------------------------------------------------------
median(Age);

#2.11-----------------------------------------------------------
Km=A(:,3);
Km=sortrows(Km,1);
LowerKm=Km(1:length(Km)/3,:);
MediumKm=Km(length(Km)/3 +1:length(Km)/3 *2,:)
LargeKm=Km(length(Km)/3 *2 +1:length(Km),:)

#2.12-----------------------------------------------------------
QuantitativeData=A(:,[2,3,5];

#2.13-----------------------------------------------------------
CW=sortrows(CW,1); #[1400,1900]
CM=sortrows(CM,1); #[1600,2100]

#the range of all cubic capacities: [1400,2100]. So we take for example [1300,2200]
sample=1300:1:2200;
plot(sample,empirical_cdf(sample,CW);
hold on;
plot(sample,empirical_cdf(sample,CM);

#2.14-----------------------------------------------------------
quantile(CW,0.8,1,1);
quantile(CW,0.8,1,2);

#2.15-----------------------------------------------------------
CubicCap=A(:,5);
cumsum(table(CubicCap)); #accumulated absolute frequencies (Ni)
cumsum(table(CubicCap))/length(CubicCap); #accumulated relative frequencies (Fi)

#2.16-----------------------------------------------------------