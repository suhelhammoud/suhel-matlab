function a = subsasgn(a,index,val)
%    p.data = []; 1
%    p.prog=[]; 2
%    p.idat=[]; 3
switch index.type
case '()'
   switch index.subs{:}
   case 1
      a.data = val;
   case 2
      a.prog = val;
   case 3
      a.idat = val;
   otherwise
      error('Index out of range');
   end
case '.'
   switch index.subs
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