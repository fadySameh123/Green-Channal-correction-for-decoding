function [frame] = readbin(name,width,hight)
%open files saved (yframe,cbframe,crframe)
fileID= fopen(name , 'r');
%width and hight of image 
imagewidth=width;
imagehight=hight;
%numcolor=1;
%create new array to save number saved in files and put it in a new array
newdata=zeros(width,hight);
%change it to double beacuse the files are saved in numbers
newdata = im2double(newdata);
%l=1;
%for index of the v
count=1;
%v will tkae each file and make it into an array
v=fscanf(fileID,'%f');
n=numel(newdata);
y=numel(v);

%disp(n);
%disp(y);
for i =1:imagewidth
    for j = 1:imagehight
        newdata(i,j)=v(count);
        count=count+1;
       % for k=1:numcolor
          
%newdata(i+(k-1)*(imagewidth*imagehight))=data(imagewidth*(j-1)*numcolor+(i-1)*numcolor+k);
       % end
%l=l+1;
    end
end
d=numel(newdata);
disp(d)
fclose(fileID);
frame=newdata;
end