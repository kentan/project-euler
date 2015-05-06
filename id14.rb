# Longest Collatz sequence

def rec(n,count,memo)
    return count + 1 if n == 1
    
    return count + memo[n] if memo.has_key?(n)
    
    if n % 2 == 0
        n = n/2
    else
        n = 3 * n + 1
    end
    

    rec(n,count + 1,memo)
    
    
end


def id14()
    memo = {}
    for i in 1..1000000
        n = i

        c = rec(n,0,memo)
        memo[n] = c
    end
    
    max = 0
    max_starting_number = -1
    memo.each do |k,v|
        if v > max
            max = v
            max_starting_number = k
        end
    end
    
    puts max_starting_number,max
    
end

id14