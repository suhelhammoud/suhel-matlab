addpath('functions');
data=importfile(fullfile('in','data.xls'));
prog=data(1,:)';
data(1,:)=[];
data=data';
seg=10;
interl=2;
% [iprt,prt,fwhere]=getFiles('d_',data,seg,interl);
% 

% data = rand(100, 3);
% [center,U,obj_fcn] = fcm(data, 3);
% plot3(data(:,1), data(:,2),data(:,3),'o');
% maxU = max(U)
% 
% index1 = find(U(1,:) == maxU);
% index2 = find(U(2, :) == maxU);
% index3 = find(U(3, :) == maxU);
% 
% line(data(index1,1), data(index1, 2),data(index1, 3), 'linestyle', 'none','marker', '*', 'color', 'g');
% line(data(index2,1), data(index2, 2), data(index2, 3), 'linestyle', 'none','marker', 'v','color', 'r');
% line(data(index3,1), data(index3, 2),data(index3, 3),  'linestyle', 'none','marker', '*','color', 'b');
