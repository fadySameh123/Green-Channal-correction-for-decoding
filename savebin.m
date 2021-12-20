function [] = savebin(yframe,cbframe,crframe,index)
fileID=fopen(strcat("C:\\Users\\fadys\\Desktop\\Digital audio\\week9\\compressed\\Ysaved",int2str(index),".bin"),'w');
for r=1:size(yframe,1)
    for c=1:size(yframe,2)
        fprintf(fileID,"%f\n",yframe(r,c,1));
    end
    fprintf(fileID,"\n");
end
fclose(fileID);
fileID=fopen(strcat("C:\\Users\\fadys\\Desktop\\Digital audio\\week9\\compressed\\cbsaved",int2str(index),".bin"),'w');
for r=1:size(cbframe,1)
    for c=1:size(cbframe,2)
        fprintf(fileID,"%f\n",cbframe(r,c,1));
    end
    fprintf(fileID,"\n");
end
fclose(fileID);
fileID=fopen(strcat("C:\\Users\\fadys\\Desktop\\Digital audio\\week9\\compressed\\crsaved",int2str(index),".bin"),'w');
for r=1:size(crframe,1)
    for c=1:size(crframe,2)
        fprintf(fileID,"%f\n",crframe(r,c,1));
    end
    fprintf(fileID,"\n");
end
fclose(fileID);
