function [a,b,c,d]=main(g,i,j,A)
a1=(g-(j-i))/(g-1);
a2=1-a1;
if mod(i+j,2)==0
    n=(i+j)/2;
    W2=WS(a1,((j-i)/2)+1);
    W1=WT(a2,((j-i)/2)+1);
else
    n=(i+j-1)/2;
    W2=WS(a1,(j-i+1)/2);
    W1=WT(a2,(j-i+1)/2);
end




if i==1
    a=0;
    d=A(j+1);
elseif j==5
a=A(i-1);
d=1;
else
    a=A(i-1);
    d=A(j+1);
end



if i+1==j
   b=A(i);
   c=A(i+1);
elseif i+1<j
   b=OWA(W2,A(i:n));
   c=OWA(W1,A(j:-1:n));
end


end