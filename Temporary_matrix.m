%�ٽӾ���
W = [0,200,200,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,...
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf;...%1
     200,0,10,100,inf,250,inf,inf,inf,inf,inf,inf,inf,inf,inf,...
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf;...%2
     200,10,0,inf,80,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,...
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf;...%3
     inf,100,inf,0,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,...
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf;...%4
     inf,inf,80,inf,0,inf,inf,200,inf,inf,inf,inf,inf,inf,inf,...
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf;...%5
     inf,250,inf,inf,inf,0,150,inf,inf,inf,inf,inf,inf,inf,inf,...
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf;...%6
     inf,inf,inf,inf,inf,150,0,50,inf,15,inf,inf,inf,inf,inf,...
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf;...%7
     inf,inf,inf,inf,200,inf,50,0,inf,inf,200,inf,inf,inf,inf,...
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf;...&8
     inf,inf,inf,inf,inf,inf,inf,inf,0,300,inf,inf,inf,inf,inf,...
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf;...%9
     inf,inf,inf,inf,inf,inf,15,inf,300,0,75,300,inf,inf,inf,...
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf;...%10
     inf,inf,inf,inf,inf,inf,inf,200,inf,75,0,inf,300,inf,inf,...
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf;...%11
     inf,inf,inf,inf,inf,inf,inf,inf,inf,300,inf,0,75,600,inf,...
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf;...%12
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,300,75,0,200,inf,...
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf;...%13
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,600,200,0,600,...
     inf,150,inf,inf,inf,600,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf;...%14
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,600,0,...
     200,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf;...%15
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,200,...
     0,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf;...  %16
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,150,inf,...
     inf,0,600,inf,inf,450,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf; ... %17
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,...
     inf,600,0,inf,300,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf;...%18
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,...
     inf,inf,inf,0,150,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf;...%19
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,...
     inf,inf,300,150,0,600,600,inf,inf,inf,inf,inf,inf,inf,inf,inf;...%20
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,600,inf,...
     inf,450,inf,inf,600,0,inf,300,100,inf,inf,inf,inf,inf,inf,inf;...%21
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,...
     inf,inf,inf,inf,600,inf,0,150,inf,inf,inf,inf,inf,inf,inf,200;...%22
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,...
     inf,inf,inf,inf,inf,300,150,0,100,inf,inf,inf,inf,inf,525,inf;...%23
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,...
     inf,inf,inf,inf,inf,100,inf,100,0,100,100,inf,inf,inf,inf,inf;...%24
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,...
     inf,inf,inf,inf,inf,inf,inf,inf,100,0,50,inf,inf,inf,inf,inf;...%25
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,...
     inf,inf,inf,inf,inf,inf,inf,inf,100,50,0,600,inf,inf,inf,inf;...%26
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,...
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,600,0,150,inf,inf,inf;...%27
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,...
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,150,0,inf,inf,inf;...%28
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,...
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,0,300,inf;...%29
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,...
     inf,inf,inf,inf,inf,inf,inf,525,inf,inf,inf,inf,inf,300,0,inf;...%30
     inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,inf,...
     inf,inf,inf,inf,inf,inf,200,inf,inf,inf,inf,inf,inf,inf,inf,0;   %31
    ];
n = size(W);%����ڵ���
save W
save n