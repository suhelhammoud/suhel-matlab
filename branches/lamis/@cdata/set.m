function p = set(p,varargin)
% SET Set asset properties and return the updated object
propertyArgIn = varargin;
while length(propertyArgIn) >= 2,
   prop = propertyArgIn{1};
   val = propertyArgIn{2};
   propertyArgIn = propertyArgIn(3:end);
   switch prop
   case 'jt'
     p.jt = val;
   case 'data'
      p.data = val;
   case 'idat'
     p.idat = val;
   case 'prog'
     p.prog = val;
   case 'dat'
     p.dat = val;
   otherwise
      error('cdata properties: jt,data, prog, idat,dat')
   end
end