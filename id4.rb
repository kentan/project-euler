#Largest palindrome product

def id4()
    range_a = 999..100
    max = 0
    (range_a.first).downto(range_a.last).each do |a|
        range_b = a..100
        (range_b.first).downto(range_b.last).each do |b|

            product = (a * b).to_s
            l = product.length            
            
            index = 0
            half = l/2 - 1
            while index <= half
                break unless product[index] == product[-1 - index]
                index += 1
            end
            
            #print index,",",half,"\n"

            (max = product.to_i if product.to_i > max) if index == half + 1

        end

    end
    return max
end

puts id4