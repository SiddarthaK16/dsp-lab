%Circular convolution

x1=input("Enter the first sequence: ");
x2=input("Enter the second sequence: ");
L=length(x1);
M=length(x2);
N=max(L,M);
yn=cconv(x1,x2,N);
n=0:N-1;
subplot(3,1,1); stem(n,x1); title("First sequence");
subplot(3,1,2); stem(n,x2); title("Second sequence");
subplot(3,1,3); stem(n,yn); title("Convolved sequence");