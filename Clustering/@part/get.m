function val = get(a, propName)
% GET Get asset properties from the specified object
% and return the value
switch propName
case 'data'
   val = a.data;
case 'prog'
   val = a.prog;
case 'idat'
   val = a.idat;
otherwise
   error([propName,' Is not a valid asset property'])
end