i=imread('5.png');
[H, W, ~]=size(i);
figure,imshow(i);
R1=93;
R2=100;
R3=241;
G1=74;
G2=238;
YellowREDIntital=175;
YellowREDFinal=254;
YellowGreenIntital=140;
YellowGreenFinal=212;
YellowRatio = 230/184;
for h=1:H
    for w=1:W
        if (i(h, w, 1)>=R1 && i(h,w,1)<=R3)
            i(h,w,:)=255;
        elseif (i(h, w, 2)>G1 && i(h,w,2)<G2)
           i(h,w,:)=255;
        elseif (i(h, w, 1)/i(h,w,2)==YellowRatio)
          i(h,w,:)=255;
        else
            i(h,w,:)=0;
        end
            
           
       
    end
end


figure,imshow(i);
if(i(1836,509,:)==255)
    ActiveSignal = 'Green Signal is active';
elseif(i(588,450,:)==255)
    ActiveSignal="Red Signal is active";
elseif(i(1059,455,:)==255)
    ActiveSignal='Yellow signal is active';
end
Output = ActiveSignal;
disp(Output);