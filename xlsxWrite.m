filename='xlsxWrite.xlsx';
Sheet=1;
row=1;

data={1;2;3;4;5;6;7;8;9};
range=sprintf('%s%d:%s%d','A',row,'A',row+length(data)-1);
row=row+length(data);
xlswrite(filename,data,Sheet,range);

data={10;11;12};
range=sprintf('%s%d:%s%d','A',row,'A',row+length(data)-1);
row=row+length(data);
xlswrite(filename,data,Sheet,range);

xlswrite(filename,data,Sheet,range);