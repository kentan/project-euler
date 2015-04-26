
def id10()
    i = 1
    count = 1
    upper = 2000000 # 2 million
    sum = 2 + 3
    
    no_more_than_upper = true
    while no_more_than_upper
        [6*i - 1,6*i + 1].each do |a|
            if a <= upper
                j = 1
                limit = Math.sqrt(a).to_i
                while j <= limit
                    j += 2
                    break if a % j == 0
                end
                sum += a if j >= limit && a % j != 0
            else
                no_more_than_upper = false
                break
            end
        end
        i += 1
    end
    return sum
    
end


puts id10()