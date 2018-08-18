lg:{-1 string[.z.z]," ",x};
lg"I am stripe";
s:"I"$.z.x;
pld:til 5000000;
h:hopen`:unix://3000;
.z.ts:{neg[h] (s;pld); lg"queue cnt: ",string sum count@'.z.W};

\t 10000
