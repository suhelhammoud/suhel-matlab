function a = subsasgn(a,index,val)
% SUBSASGN Define index assignment for asset objects
%    p.jt=[]; 1
%    p.data = []; 2
%    p.prog=[]; 3
%    p.idat=[]; 4
%    p.dat=[]; 5
switch index.type
case '()'
   switch index.subs{:}
   case 1
      a.jt = val;
   case 2
      a.data = val;
   case 3
      a.prog = val;
   case 4
      a.idat = val;
   case 5 
      a.dat = val;
      
   otherwise
      error('Index out of range');
   end
case '.'
   switch index.subs
   case 'jt'
      a.jt = val;
   case 'data'
      a.date = val;
   case 'prog'
      a.prog = val;
   case 'idat'
      a.idat = val;
   case 'dat'
      a.dat = val;
      
   otherwise
      error('Invalid field name')
   end
end