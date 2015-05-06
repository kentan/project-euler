#Lattice paths

def id15(n)
    arr = [[]]

    for i in 0..(n)
        arr[0][i] = 1
    end
    
    for i in 0..(n - 1)
        arr[i + 1] = []
        arr[i + 1][0] = arr[i][0]
        for j in 1..n
            arr[i + 1][j] = arr[i + 1][j - 1] + arr[i][j]
        end
    end
     
    return arr
end

puts id15(20)[20][20]
    
    