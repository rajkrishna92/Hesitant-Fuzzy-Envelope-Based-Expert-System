function out=WT(a,n)

for i=1:n-1
   w(i)=a*((1-a)^(i-1));
end
w(n)=(1-a)^(n-1);
out=w;
end
