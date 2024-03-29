% Get the partitions matrix of indexes
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
    disp('seg <= interl (the Segment should not be less than the Interlink ');
    return ;
end;

% The space taken by each Segment
piece=(seg-interl);

%Check the remains of pices
rm=mod(sz,piece);

%Deside what is the number of segments
if rm==0 
    imax=(sz-rm)/piece ;
else
    imax=(sz-rm)/piece +1;
end

% % Initiate the result matrix ( Would be idat' later) with 2 dimensions 
% -seg  : the number of items inside the segment
% -imax : The number of segments
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


