#Counting Sundays

def is_leap?(year)
    is_leap_year = year % 4 == 0
    is_leap_year &= ((year % 100 != 0 ) || (year % 400 == 0))
    
    return is_leap_year  
end



def id19()
    days = [31,28,31,30,31,30,31,31,30,31,30,31]
    first_day = 1
    sum = 0
    days.each do |d|
        first_day += d 
    end
    first_day %= 7
    
    for year in 1901..2000
        if is_leap?(year)
            days[1] = 29
        else
            days[1] = 28
        end

        days.each do |d|
            first_day += d
            sum += 1 if first_day % 7 ==0 
        end

        first_day %= 7
    end
    puts sum
end

puts id19