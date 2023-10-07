#clicka en DatPrac2Ejer 1
who
A #calls the variable

B=A(:,2); #take the ages
unique(B); #obtain values in increasing order
table(B); #obtain the absolute frequencies (ni)
[unique(B),table(B).'], #join the ages and their absoulte frequencies 
table(B)/length(B); #relative frequencies (fi)
cumsum(table(B)); #accumulated absolute frequencies (Ni). Sample size (last value)=17
cumsum(table(B))/length(B); #accumulated relative frequencies (Fi)

#Measures of central tendencies
mode(B); #there are mores n=2. But it returns only the smallest value
median(B);
mean(B); #=sum(B)/length(B)

#Measures of position
quantile(B,0.5,1,1); #=43
quantile(B,0.5,1,2); #=43
#now we can asure that the median is unique
#QUESTION: We know median is unique. Can an empirical CRF be equal to 1/2??

#Measures of dispersion
range(B);
var(B,1); #meansq(x)-mean(x)^2
std(B,1);
iqr(B);
std(B,1)/mean(B); #Pearson's coefficient of variation (CV Px)

#Additional commands
meansq(B); #mean(B.*B)
statistics(B);

sortrows(A,1); #to sort the table by gender in ascending order
sortrows(A,-1); #to sort the table by gender in descending order

# Graphical representations
empirical_cdf(17,B); #the empirical no se que at point 17 of B
#=0 because there are no values loer or equal to 17
empirical_cdf(71,B); #=1, all values are lower than 71
empirical_cdf([17,43,71],B);

hist(B);
hist(B,5); #do the histogram with 5 boxes

#we cannot write pie(B), octave wants the absolute frequencies
pie(table(B));
pie([3,3]);

#stem(x,y) can be used ti draw line charts
#x and y must be 2 row vectors with the same size
#puts the values of x in the x-axis and the height of the line is the y
stem([1,3,4,6],[2,1,3,2]);
#in x- values and y-absolute frequencies
stem(unique(B),table(B));
bar(unique(B),table(B));