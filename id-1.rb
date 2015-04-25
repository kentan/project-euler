# Multiples of 3 and 5


def id1
    sum = 0
    for i in 1..999
       if i % 3 == 0 || i % 5 == 0 
           sum += i
       end
    end
    sum
end

puts id1