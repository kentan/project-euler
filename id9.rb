# Special Pythagorean triplet

def id9(n)
    a = 1
    b = 1
    c = 1
    while a < n
        b = a + 1
        while b < n
            c = n - a - b
            return a * b * c if c**2 == a**2 + b ** 2
            b += 1
        end
        a += 1
    end
    return "not found"
end

print id9(1000)
    
    

