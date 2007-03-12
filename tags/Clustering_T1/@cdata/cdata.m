function p = cdata(varargin)

switch nargin
case 0
% if no input arguments, create a default object

   p.jt=[];
   p.data = [];
   p.prog=[];
   p.idat=[];
   p.dat=[];

   p = class(p,'cdata');
case 1
   
% if single argument of class asset, return it
   if (isa(varargin{1},'cdata'))
      p = varargin{1};
   else
%        (isa(varargin(1),'jobtemplate'))
        %Get the data from the excel file in the job template
     %  p=getdata(varargin(1));
     p.jt=varargin{1};
   
     [p.data,p.prog]=importfile(p.jt.inDir,p.jt.datafile);% Get the data & prog
      p.idat=partition(size(p.data,2),p.jt.seg, p.jt.interl);% Get the idat
      
      [m ,n ]=size(p.idat);
      prt=zeros(size(p.data,1),n);
      p.dat=cell(1,m);

    for i=1:m %partitions
        for j=1:n % n segment size
            t=p.idat(i,j);
            prt(:,j)= p.data(:,t);
        end
        p.dat{i}=prt;
    end
     
      p = class(p,'cdata');
%    else
%       error('Wrong argument type')
   end 
   
case 4
% create object using specified values
   
   p.data =  varargin{1};
   p.prog= varargin{2};
   p.idat= varargin{3};
   p.dat= varargin{4};
   p = class(p,'cdata');
otherwise
   error('Wrong number of input arguments (not four')
end

