#Non-abundant sums


# just same as id21
def get_divisors(n)
    a = 2
    divisors = [1]
    while a <= n/2
        divisors.push(a) if n % a == 0
        a += 1        
    end

    return divisors
end

def is_abandant(n)
    divisors_sum = get_divisors(n).reduce(:+)
    
    return divisors_sum > n
end

def get_abandant_number(limit)
    abandant = []
    for i in 1..limit
        abandant.push(i) if is_abandant(i) 
    end
    
    return abandant
end

def get_abandant_sum_number(n)
    abandant = get_abandant_number(n)
    len = abandant.length - 1
    abandant_sum = []
    for i in 0..len
        for j in 0..len
            break if abandant[i] + abandant[j] > n
            abandant_sum.push(abandant[i] + abandant[j]) 
        end
    end
    return abandant_sum.uniq!.sort
end

def id23
    well_known_max = 28123
    d = get_abandant_sum_number(well_known_max)

    
    sum = well_known_max * (well_known_max + 1)/2
    sum_abandant = d.reduce(:+)
    return sum - sum_abandant
    

    
end


puts id23