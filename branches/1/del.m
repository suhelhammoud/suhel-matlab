%issam
suffix='.xls'
test=[1 2 3 ; 4 5 6]
str=strcat('test','.',suffix)
% save(fullfile(jt.outDir,str),'test', '-ascii', '-tabs')
save(fullfile(jt.outDir,'test', suffix),'test', '-ascii', '-tabs')