%×î¼ÑÂ·¾¶
function que = best(prev,start,stop,n)
    for i = 1:n
        que(i) = -1;
    end
    tot = 1;
    que(tot) = stop;
    tot = tot + 1;
    tmp = prev(stop);
    while(tmp ~= start)
        que(tot) = tmp;
        tot = tot + 1;
        tmp = prev(tmp);
    end
    que(tot) = start;
end