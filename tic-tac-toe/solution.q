w:{[b;p]any({all x@'til count x}@'1 reverse\i),(any all@)@'1 flip\i:b=p};
s:{[b;p]
   if[count i:where w'[;p]bs:3 cut'@[l;;:;]'[where "."=l:raze b;p];:(1;bs i 0)];
   if[1=count i:where "."=l;:(0;3 cut @[l;i;:;p])];
   (neg o;bs)@\:first idesc first@'o:s'[bs;("xo"!"ox")p]
 };
optp:{[b;p]b,'"|",'s[b;p]1};
optp[b:("x.o";".x.";"...");p:"o"]
