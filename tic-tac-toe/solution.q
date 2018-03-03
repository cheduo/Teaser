w:{[b;p]any({all x@'til count x}@'1 reverse\i),(any all@)@'1 flip\i:b=p};
s:{[b;p]
   if[count i:where w'[;p]bs:3 cut'@[l;;:;]'[where "."=l:raze b;p];:(1;bs i 0)];
   if[1=count bs;:(0;bs 0)];
   (o;bs)@\:first idesc neg o:first@'s'[bs;("xo"!"ox")p]
 };
optp:{[b;p]b,'"|",'s[b;p]1}; /optimal play
optp[b:("x.o";".x.";"...");p:"o"]
