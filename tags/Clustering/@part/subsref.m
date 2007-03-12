function b = subsref(a,index)


%    p.data = []; 1
%    p.prog=[]; 2
%    p.idat=[]; 3

switch index.type
case '()'
   switch index.subs{:}
   case 1
      b = a.data;
   case 2
      b = a.prog;
   case 3
      b = a.idat;
   otherwise
      error('Index out of range')
   end
case '.'
   switch index.subs
   case 'data'
      b = a.data;
   case 'prog'
      b = a.prog;
   case 'idat'
      b = a.idat;
   otherwise
      error('Invalid field name')
   end
case '{}'
   error('Cell array indexing not supported by asset objects')
end