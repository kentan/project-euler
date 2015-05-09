#Power digit sum

def id16(digit)
    v = []
    v[0] = 1

    ten_digit = 1000000000
    for i in 0..(digit - 1)
        k = (v.length - 1)
        
        for j in 0..k
            v[j] = v[j] * 2
        end
        for j in 0..k
            if v[j] >= ten_digit
                v[j + 1] = 0 if v[j + 1] == nil
                v[j + 1] += (v[j] / ten_digit)
                v[j] = v[j] % ten_digit
            end
            j+=1
        end
    end

    sum = 0
    v.each do |a|
        str = a.to_s
        l = str.length
        for i in 0..(l - 1)
            sum += str[i].to_i
        end
    end
    return sum
end

print id16(1000)