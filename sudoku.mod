# SETS

param n;
set I := 1 .. n*n;

# PARAMS

param A{I,I} default 0;

 var x{i in I,j in I,k in I} binary, >= if A[i,j] = k then 1 else 0;

s.t. v3{j in I, k in I}: sum{i in I}x[i,j,k]=1;
s.t. v4{i in I, k in I}: sum{j in I}x[i,j,k]=1;
s.t. v5{p in 1..n,q in 1..n,k in I}: sum{i in (n*p-2)..n*p,j in (n*q-2)..n*q}x[i,j,k]=1;
s.t. allfilled{i in I,j in I}: sum{k in I} x[i,j,k]=1;