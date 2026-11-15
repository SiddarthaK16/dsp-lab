N=input("Enter the number of cycles");
LN=1 
x=0:0.01:LN;     %Rise
y=ones(1,length(x)+1);  %Stay
z=LN:-0.01:0;  %Fall
y3=[x y z]  %describing one cycle
y4=[]

for i=1:N
    y4=[y4,y3];

end

subplot(121);plot(y4);title("Analog trapezoidal waveform");
subplot(122);stem(y4);title("Discrete trapezoidal waveform");