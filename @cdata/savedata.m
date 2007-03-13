function savedata(p)
prog=p.prog;
data=p.data;
idat=p.idat;
dat=p.dat;
jt=p.jt;

%Make the output directory
mkdir(jt.outDir);

% Set the Path for the files names
fwhere=fullfile(pwd,jt.outDir);

%Save 'idat' matrix:
% -Save progress,  data, and idat matrixes
save(fullfile(jt.outDir,'prog'),'prog', '-ASCII');
save(fullfile(jt.outDir,'data'),'data','-ASCII');
save(fullfile(fwhere,'idat'),'idat', '-ASCII');

% -save Partitions in 'dat' cell array
for i=1:size(dat,2)
   tmps=fullfile(fwhere,strcat(jt.fPre,int2str(i)));
    tmpv=dat{i};
    save(tmps,'tmpv', '-ASCII');
end
