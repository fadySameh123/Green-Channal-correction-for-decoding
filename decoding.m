function cframe = decoding(frame,yframe,cbframe,crframe)
    cbframe = imresize (cbframe,2);
   
    crframe = imresize (crframe,2);
    D = 8;
    T = dctmtx(D);
    Y = im2double(yframe);
    Cb = im2double(cbframe);
    Cr = im2double(crframe);
    
    
    I2Y = blkproc(Y,[D D],'P1*x*P2',T',T);     
    I2Cb = blkproc(Cb,[D D],'P1*x*P2',T',T);
    I2Cr = blkproc(Cr,[D D],'P1*x*P2',T',T);
    
    imgycbcr(:,:,1) = im2uint8(I2Y);
    imgycbcr(:,:,2) = im2uint8(I2Cb);
    imgycbcr(:,:,3) = im2uint8(I2Cr);
   
    cframe = ycbcr2rgb(imgycbcr);
  
   % imtool(cframe)
end