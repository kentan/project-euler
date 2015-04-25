#Largest prime factor


def id3(n)
    limit = Math.sqrt(n)
    a = 2
    max = 0
    
    while a <= limit
        count = 0
        while n % a == 0
            n = n/a
            count += 1
            max = a
        end
        a += 1
    end
    puts max
end

id3(600851475143)