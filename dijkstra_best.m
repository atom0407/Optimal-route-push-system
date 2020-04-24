%dijkstra算法计算最佳路径
function [prev] = dijkstra_best(W,n,start)
    for i = 1:n
        dist(i) = W(start,i); 
        mark(i) = 0;
        if(dist(i) == inf)
            prev(i) = 0;
        else
            prev(i) = start;
        end
    end
    dist(start) = 0;
    mark(start) = 1;
    for i = 1:n
        tmp = inf;
        u = start;
        for j = 1:n
            if(mark(j) == 0 && dist(j) < tmp)
                u = j;
                tmp = dist(j);
            end
        end
        mark(u) = 1;
        for j = 1:n
                if(mark(j) == 0 && W(u,j) < inf)
                    newdist = dist(u) + W(u,j);
                    if(newdist < dist(j))
                        dist(j) = newdist;
                        prev(j) = u;
                    end
                end
        end
    end
end



