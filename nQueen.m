%function for N queen problem
function [num] = nQueen(N)
%N--dimension 
%initial array a
NULLQ = -1000;
a = [];
for i = 1:1:N
  a(i) = NULLQ;
end
queenQ(a);
%function for putting queens
function [nnQ] = queenQ(a)
n = 0;
i = 0;
j = 0;
while i < N
  while j < N
    if validQ(i,j)
      a(i) = j;
      j = 0;
    end
  end
end
%function for judging if it is valid
function [TF] = valid(i,j)

