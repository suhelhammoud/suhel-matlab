function p = set(p,varargin)
% SET Set asset properties and return the updated object
propertyArgIn = varargin;
while length(propertyArgIn) >= 2,
   prop = propertyArgIn{1};
   val = propertyArgIn{2};
   propertyArgIn = propertyArgIn(3:end);
   switch prop
   case 'data'
      p.data = val;
   case 'prog'
     p.prog = val;
   case 'idat'
     p.idat = val;
   otherwise
      error('cdata properties: ,data, prog, idat')
   end
end