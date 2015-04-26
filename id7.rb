# 10001st prime

def id7(target)
    i = 3
    count = 1
    cap = 1000000000
    while i < cap
        j = 1
        while j < i
            j += 2
            break if i % j == 0
        end
        count += 1 if i == j
        
        return i if count == target
        i += 2
    end
    
end

puts id7(10001)