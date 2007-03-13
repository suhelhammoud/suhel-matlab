function savedata(varargin)
p = varargin{1};
prog = p.prog;
data = p.data;
idat = p.idat;
dat = p.dat;
jt = p.jt;
suffix = '.xls';

% if ( nargin >1)
%     suffix = strcat('.',varargin(2)); % for example '.xls'
% end

%Make the output directory
mkdir(jt.outDir);

% Set the Path for the files names
fwhere=fullfile(pwd,jt.outDir);


%Save 'idat' matrix:
% -Save progress,  data, and idat matrixes

save(fullfile(jt.outDir,strcat('prog',suffix )),'prog', '-ascii','-tabs');
save(fullfile(jt.outDir,strcat('data', suffix)),'data','-ascii', '-tabs');
save(fullfile(fwhere,strcat('idat',suffix)),'idat', '-ascii', '-tabs');

% -save Partitions in 'dat' cell array
for i=1:size(dat,2)
    fileName=jt.fPre
    tmps=fullfile(fwhere,strcat(jt.fPre,int2str(i),'.', suffix));
    tmpv=dat{i};
    save(tmps,'tmpv', '-ascii');
end


