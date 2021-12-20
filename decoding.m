function cframe = decoding(frame,yframe,cbframe,crframe)
    %cbframe = imresize (cbframe,2);
   
    %crframe = imresize (crframe,2);
    %yframe=imresize(yframe,0.5);
    D = 8;
    T = dctmtx(D);
    Y = yframe;
    Cb = cbframe;
    Cr = crframe;
    imtool(Y);
    imtool(Cb);
    imtool(Cr);
    
    I2Y = blkproc(Y,[D D],'P1*x*P2',T',T);     
    I2Cb = blkproc(Cb,[D D],'P1*x*P2',T',T);
    I2Cr = blkproc(Cr,[D D],'P1*x*P2',T',T);
       % I2Cb=imresize(I2Cb,2);
        %I2Cr=imresize(I2Cr,2);
        imtool(I2Y);
    imgycbcr(:,:,1) = im2uint8(I2Y);
    imgycbcr(:,:,2) = im2uint8(I2Cb);
    imgycbcr(:,:,3) = im2uint8(I2Cr);
   
    cframe = ycbcr2rgb(imgycbcr);
  
   % imtool(cframe)
end