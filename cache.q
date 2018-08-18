lg:{-1 string[.z.z]," ",x};
lg"I am cache";
\p 3000
\t 30000
client:0n
sub:{client::.z.w}
pld::()
cnt:1
.z.ps:{lg .Q.s1 (`cache_zps;x[0]);pld::pld,x[1];system"sleep 1"}

.z.ts:{
  if[null client;:(::)];
  neg[client]l:("hi client ",string cnt;pld);
  lg l[0];
  pld::();
  cnt::cnt+1
 }
