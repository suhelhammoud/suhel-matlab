function idat=partition(varargin)
switch nargin
case 1
     if (isa(varargin{1},'cdata'))
       p = varargin{1};
       sz=size(p.data,2);
       seg=p.jt.seg;
       interl=p.jt.interl;
     else
       error('1 input not of type cdata')
     end
  case 3

   sz = varargin{1};
   seg=varargin{2};
   interl=varargin{3};
end    
 %Check if seg=interl
if (seg-interl)<=0 
    disp('seg <= interl');
    return ;
end;

piece=(seg-interl);
rm=mod(sz,piece);


if rm==0 
    imax=(sz-rm)/piece ;
    
else
    imax=(sz-rm)/piece +1;
   
end
result=zeros(seg,imax);

index=0;
for j=1:imax
   for i=1:seg
       index=mod(index,sz)+1;
      result(i,j)=index;
   end
   index=index-interl;
end

idat=result';


