#Amicable numbers

def get_divisors(n)
    a = 2
    divisors = [1]
    while a <= n/2
        divisors.push(a) if n % a == 0
        a += 1        
    end

    return divisors
end

def cal_all_divisors_sum(n)
    a = 1
    memo = {}
    while a <= n
        memo[a] = get_divisors(a).reduce(:+)
        a += 1
    end
    
    return memo
end

def get_amicable_numbers(n,memo)
    amicable = []
    for i in 1..n
        for j in (i + 1)..n
            if memo[i] == j and memo[j] == i
                amicable.push(i,j)
                break
            end
        end
    end
    
    return amicable
    
end
def id21(n)
    memo = cal_all_divisors_sum(n)
    return get_amicable_numbers(n,memo).reduce(:+)
    
end

puts id21(10000)

#print get_divisors(5,{})