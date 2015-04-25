#Smallest multiple


def factorize(n)
    limit = n
    a = 2
    max = 0
    arr= []
    while a <= limit
        count = 0
        while n % a == 0
            n = n/a
            count += 1
            max = a
        end

        count.times do
            arr.push a 
        end

        a += 1
    end
    return arr
end


def pick_and_multiply(target,n)
    product = 1
    while n >= 2
        max = 0
        target.each do |a|
            count = 0
            a.each do |b|
               count += 1 if b == n
            end 
            max = count if count > max
        end
        product = product * (n ** max ) if max >= 1
        n -= 1
    end
    return product
end
    
def id5(n)
    arr = []
    for i in 2..n
        arr.push(factorize(i))
    end
    

    return pick_and_multiply(arr,n)

end

print id5(20),"\n"