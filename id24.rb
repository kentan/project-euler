#Lexicographic permutations

# rec is implemented based on the following logic.

# Suppose one millionth number N0N1N2...N9
# There exists a variable a that is N0 * a! < one million < (N0 + 1) * a!
# Solving this, you get N0 = 2 and a = 9
# Now one millions is expressed as 2N1N2N3...N9

# You can get N1 through N9 by doing this recursively.

# 2*9! < one million < 3 * 9!
# one million - 2*9! = 274240

# 6*8! < 274240 < 7*8!
#274240 - 6*8! = 32320

# 6*7! < 32320 < 7*7!
# 32320 - 6*7! = 2080

# By doing this to the end, you get the sequence [2662512111]
# Since the digit you can use is [0,1,2,3,4,5,6,7,8,9],
# 2 corresponds to the 3nd smallest number,which is 2.
# 6 corresponds to the 7th smallest number among the rest,which is 7
# 6 corresponds to the 7th smallest number among the rest,which is 8
# 2 corresponds to the 3nd smallest number among the rest,which is 3
# 5 corresponds to the 6th smallest number among the rest,which is 9
# 1 corresponds to the 2st smallest number among the rest,which is 1
# 2 corresponds to the 3rd smallest number among the rest,which is 5
# 1 corresponds to the 2nd smallest number among the rest,which is 4
# 1 corresponds to the 2nd smallest number among the rest,which is 6
# 1 corresponds to the 1st smallest number among the rest,which is 0

def rec(target,digit,result)

    
    return result+(target - 1).to_s if target <= 1
    
    ## Fir stly, search for n that is (n + 1)! > million
    n = 1
    prod = 1

    while prod < target && n <= digit
        prod = prod * n
        n += 1
    end
    
    n -= 1
    prod /= n
    n -= 1

    digit = n
    
    ## secondly, search for m that is (m + 1) x n! > million
    m = 2
    tmp = prod
    while tmp < target
        tmp = prod * m
        m += 1
    end
    
    m -= 2
    
    
    ## The one millionth number is between m*(n!) and (m+1) * (n!)
    
    base = 1
    while n >= 1
        base *= n
        n -= 1
    end
    
    base = m * base
    left = target - base

    
    
    return rec(left,digit,result + m.to_s)
end

# pick the n th non-negative number that is not in history
# for example 
# if history = [0,2,3] and n = 1 then pick return 1.
# if history = [0,2,3] and n = 2 then pick return 4.
# if history = [2,3] and n = 2 then pick return 1
# if history = [2,3] and n = 3 then pick return 4

def pick(n,history)
    i = -1
    j = 0
    while j < (n + 1)
        i += 1
        j += 1 if history[i] == nil
        
    end
    
    return i
end
            
def id24
    perm = rec(1000000,10,"")
    history = {}
    i = 0 
    len = perm.length
    answer = ""
    while i < len
        s = perm[i].to_i
        s = pick(s,history)
        history[s] = 1
        answer += s.to_s
        i+=1
    end
    
    return answer
end

puts id24