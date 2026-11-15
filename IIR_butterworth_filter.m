%IIR butterworth filter

rp=input("Enter the pass band ripple: ");
rs=input("Enter the stop band ripple: ");
wp=input("Enter the pass band frequency: ");
ws=input("Enter the stop band frequency: ");
fs=input("Enter the sampling frequency: ");

w1=2*wp/fs
w2=2*ws/fs

[n,wn] = buttord(w1,w2,rp,rs)



%Low pass
[b,a]= butter(n,wn);
[h,w]= freqz(b,a,512);
subplot(2,2,1); plot(w,abs(h)); title("Low pass filter");


%High pass
[b,a]=butter(n,wn,'high');
[h,w]= freqz(b,a,512);
subplot(2,2,2); plot(w,abs(h)); title("High pass filter");


%Band pass
wn1= [w1 w2];
[b,a]= butter(n,wn1);
[h,w]= freqz(b,a,512);
subplot(2,2,3); plot(w,abs(h)); title("Band pass filter");

%Band stop
wn2=[w1 w2];
[b,a]= butter(n,wn2,'stop');
[h,w]= freqz(b,a,512);
subplot(2,2,4);plot(w,abs(h)); title("Band stop filter")
