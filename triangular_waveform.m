N=input("Enter the number of cycles..");
M=input("Enter the amplitude..");
t1=0:0.5:M;  %Upp
t2=M:-0.5:0;  %Downn
t=[];
for i=1:N
    t=[t,t1,t2];   %Both up and down gluing together
end

subplot(121);plot(t);title("Analog triangular waveform");
subplot(122);stem(t);title("Discrete traingular waveform");