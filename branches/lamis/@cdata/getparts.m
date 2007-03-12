function a=getparts(p)
m=size(p.idat,1);
dat=p.dat;
idat=p.idat;
for i=1:m
   a{i}=part(dat{i},p.prog,idat(i,:));
end