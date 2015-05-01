#Highly divisible triangular number


require 'Prime'

def get_triangle_number(n)
    return n * (n + 1 ) / 2
end

def factorize(n)
    limit = n
    a = 2
    max = 0
    h = {}
    while a <= limit
        count = 0
        while n % a == 0
            n = n/a
            count += 1
            max = a
        end

        h[a] = count unless count == 0 

        a += 1
    end
    return h
end


def prime_factorize(n)
    Prime.prime_division(n)
    
end
def id12_1()
    i = 1000
    cap = 100000
    
    target = 500
    

    while i < cap

        s = get_triangle_number(i)

        num = 0

        num = get_num_of_divisors(s)

    print i,",",num,",","\n" if num > 100
 #       num = get_num_of_divisors(s)

        
        break if num >= target
    

        i += 1

    end
    
    puts s
end

def id12()
    i = 1
    target = 500
    cap = 1000000
    
    while i < cap
        
        s = get_triangle_number(i)
        h =  prime_factorize(s)
        num = 1
        h.each do |v|
            num *= ( v[1] + 1)
        end
        
        break if num > target
        i += 1
    end
    
    puts s
end

puts id12

