#Sum square difference

def sum_of_square(n)
    sum = 0
    for i in 1..n
        sum += i*i
    end
    return sum
end

def square_of_sum(n)
    sum = 0
    
    return (n*(n+1)/2)**2
end

# A = (1²+2²+3² + ... + n²) = 1/6 *((n+1)*n*(2n+1))
# B= (1+2+3+...+n)² = 1³+2³+3³+...+n³

# A - B = (1+2+3+...+n)² -(1²+2²+3²+...+n²)
#       = (1³-1²) + (2³-2²) + (3³-3²) + ... + (n³-n²)
#       = 2²*(2-1) + 3²*(3-1) + 4²*(4-1) + ... + n²*(n-1)
#       = 2²*1 + 3²*2 + 4²*3 + ... + n²(n-1) 

def calc(n)
    sum = 0
    for i in 2..n
        sum += (i ** 2 ) * (i - 1)
    end
    return sum
end

def id6(n)
    #return square_of_sum(n) - sum_of_square(n)
    return calc(n)
end

puts id6(100)