#Names scores

def id22()
    names = []
    File.open("./p022_names.txt","r") do |f|
        names =  f.read.gsub(/\"/,"").split(",").sort
    end

    base = "A".ord - 1


    len = names.length
    sum = 0 
    for i in 0..(len -1)
        v = 0
        names[i].each_byte do |s|
            v += s - base 
        end
        v *= (i + 1)
        sum += v
    end

    return sum
end

puts id22
    