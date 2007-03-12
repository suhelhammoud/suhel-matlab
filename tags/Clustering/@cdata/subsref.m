function b = subsref(a,index)
%SUBSREF Define field name indexing for asset objects

%    p.jt=[]; 1
%    p.data = []; 2
%    p.prog=[]; 3
%    p.idat=[]; 4
%    p.dat=[]; 5

switch index.type
case '()'
   switch index.subs{:}
   case 1
      b = a.jt;
   case 2
      b = a.data;
   case 3
      b = a.prog;
   case 4
      b = a.idat;
   case 5
      b = a.dat;
   otherwise
      error('Index out of range')
   end
case '.'
   switch index.subs
   case 'jt'
      b = a.jt;
   case 'data'
      b = a.data;
   case 'prog'
      b = a.prog;
   case 'idat'
      b = a.idat;
   case 'dat'
      b = a.dat;
%    case 'savedata'
%       savedata(a);     
   otherwise
      error('Invalid field name')
   end
case '{}'
   error('Cell array indexing not supported by asset objects')
end