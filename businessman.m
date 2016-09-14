%businessman
clear,clc;
N = 3;
M = 2;
K = 100;
s = [];
s(:,1) = [N;N];
d = [];
k = 1;
%..............body
currS = s(:,1);
nextS = curS;
nNextS = 1;
while num(nNextS) ~= 0
  if mod(k,2)
    u = 1;
  else
    u = -1;
  end
  [nextS,nNextS] = searchStates(currS(:,k),u,N,M);
  if nNextS ~= 0
    for k2 = 1:1:nNextS
      currS = nextS(:,k2);
    end
  else
    disp('this is 0');
  end
end


