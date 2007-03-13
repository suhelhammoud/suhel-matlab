function val = get(a, propName)
% GET Get asset properties from the specified object
% and return the value
switch propName
case 'jt'
   val = a.jt;
case 'data'
   val = a.data;
case 'prog'
   val = a.prog;
case 'idat'
   val = a.idat;
case 'dat'
   val = a.dat;
otherwise
   error([propName,' Is not a valid asset property'])
end