
data={};
for i=1:100
    data=cat(2,data,i);
end
data=data';

filename='xlsxWrite.xlsx';
Sheet=1;
row=1;

%for i=1:100
%    %range=sprintf('%s%d:%s%d','A',row,'A',row+length(data)-1);
%    range=sprintf('%s%d','A',i);
%    xlswrite(filename,data(i),Sheet,range);
%end

range=sprintf('%s%d:%s%d','A',row,'A',row+length(data)-1);
xlswrite(filename,data,Sheet,range);