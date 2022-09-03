function out=WS(a,n)
w(1)=a^(n-1);
for i=2:n
   w(i)=(1-a)*(a^(n-i));
end
out=w;
end
