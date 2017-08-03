def rod_cutting_memoization_aux(p,n,r):
    if r[n]>=0:
        return r[n]
    if n is 0:
        q = 0
    else:
        q = p[n]      
        for i in xrange(1,n+1):
            q = max(q, p[i] + rod_cutting_memoization_aux(p,n-i,r))
    r[n] = q
    return q

p=[0,1,5,8,9,10,17,17,20,24,30]
n = 4
r = [-1] *(n+1) 
print rod_cutting_memoization_aux(p,n,r)
