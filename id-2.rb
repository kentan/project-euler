# Even Fibonacci numbers
def fib_sum(a,b,n,sum)

    return sum if n <= 2 || sum >= 4000000
    return fib_sum(a + b, a, n - 1,a %2 == 1 ? sum : sum + a)
    
    
end 

def id2
    #fib(1,2,4000000)
    fib_sum(1,1,4000000,0)
    
end

puts id2