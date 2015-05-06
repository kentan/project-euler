#Number letter counts


def id17()
#    defs = []
#    defs[0] = 0 #
#    defs[1] = 3 # one
#    defs[2] = 3 # two
    defs = [0,"one".length,"two".length,"three".length,"four".length,"five".length,"six".length,"seven".length,"eigth".length,"nine".length,"ten".length]
    defs += ["eleven".length,"twelve".length,"thirteen".length,"fourteen".length,"fifteen".length,"sixteen".length,"seventeen".length,
        "eighteen".length,"nineteen".length,"twenty".length]
    defs[30] = "thirty".length
    defs[40] = "forty".length
    defs[50] = "fifty".length
    defs[60] = "sixty".length
    defs[70] = "seventy".length
    defs[80] = "eighty".length
    defs[90] = "ninety".length
    defs[100] = "hundred".length
    defs[1000] = "onethousand".length
    defs[1001] = "and".length

    
    index = 1
    sum = 0
    digit = [0,0,0]
    
    
    while index < 1000
        digit[0] = index / 100
        digit[1] = (index / 10) % 10
        digit[2] = index % 10

        digit[0] = digit[0] == 0 ? 0 : defs[digit[0]] + defs[100]
        digit[0] += defs[1001] if digit[0] !=0 and(digit[1] + digit[2] != 0 )
        if digit[1] == 0
            digit[1] = 0
            digit[2] = defs[digit[2]]                        
        elsif digit[1] == 1
            digit[1] = defs[digit[1] * 10 + digit[2]]
            digit[2] = 0
        else
            digit[1] = defs[digit[1] * 10]
            digit[2] = defs[digit[2]]            
        end

        sum += digit[0] + digit[1] + digit[2]
        index += 1
    end
    sum += defs[1000]
    return sum
    
end

puts id17()