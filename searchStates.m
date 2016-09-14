%function for searching next suitable states
function [planStates,nPlanStates,planState,nPlanState]  = searchStates(s,u,N,M)
planStates = [];
d = [];
%k--count the number of suitable strategies
k = 0;
%nPlanStates--count the number of suitable planStates
nPlanStates = 0; 
%find all suitable strategies
for m = 0:1:N
  for n = 0:1:N
    if m + n > 0 && m + n <= M && m >= n
      k = k + 1;
      d(:,k) = [m;n];
    end
  end
end
%find all suitable states
for j = 1:1:k
  state = s + u * d(:,j);
  %condition of possible states
  %s(1,k+1) == 0 && s(2,k+1) <= N && s(2,k=1) >= 0
  %s(1,k+1) == N && s(2,k+1) <= N && s(2,k=1) >= 0
  %s(1,k+1) == s(2,k+1) && s(2,k+1) <= N && s(2,k=1) >= 0
  if (state(1) == 0 && state(2) <= N && state(2) >= 0) || ...,
      (state(1) == N && state(2) <= N && state(2) >= 0) || ...,
      (state(1) == state(2) && state(2) <= N && state(2) >= 0)
    nPlanStates = nPlanStates + 1;
    planStates(:,nPlanStates) = state;
  end
end
%get certain one state and its number
planState = [];
nPlanState = 0;
if nPlanStates == 0
  planState = [];
  nPlanState = 0;
else
  for j2 = 1:1:nPlanStates
    
  end
end
