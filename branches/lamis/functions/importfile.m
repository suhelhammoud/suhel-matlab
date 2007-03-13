function [data,prog]=importfile(inDir,datafile)

%IMPORTFILE(FILETOREAD1)
%  Imports data from the specified file
%  FILETOREAD1:  file to read

%  Auto-generated by MATLAB on 12-Dec-2006 23:19:25

% Import the file

fileToRead1=fullfile( inDir, datafile);
rawData1 = importdata(fileToRead1);
 data=rawData1;
 prog= data(1,:)';
 data(1,:)=[];%delete the progress row
 data= data';%transpose