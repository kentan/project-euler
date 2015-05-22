#1000-digit Fibonacci number

class MyBigNumber

    @@ten_digit = 1000000000

    def initialize(a)
        @v = [a]
        
        self.carry        
        return self
    end
    
    def +(x)
        my_digit = @v.length
        your_digit = x.values.length
        max = my_digit >= your_digit ? my_digit : your_digit
        
        new_v = [0]
        for i in 0..(max - 1)
            new_v[i] = (@v[i] == nil ? 0 : @v[i]) + (x.values[i] == nil ? 0 : x.values[i])     
        end
        
        
        y = MyBigNumber.new(0)
        y.v = new_v
        y.carry
        
        return y
    end
    
    def carry
        len = @v.length
        for i in 0..(len - 1)
            if @v[i] >= @@ten_digit
                @v[i + 1] = 0 if @v[i + 1] == nil
                @v[i + 1] += (@v[i] / @@ten_digit)
                @v[i] = @v[i] % @@ten_digit
            end
        end        
        @digit = @v.length
    end
    
    def to_s
        s = ""
        @v.each do |e|
            s += (e.to_s)
        end
        return s
    end
    
    def values
        @v
    end
        

    def digit
        if @v.length == 1
            @v[0].to_s.length
        else
            (@digit - 1) * 9 + @v[-1].to_s.length
        end
    end
    
    attr_accessor :v
    
end


def sumup(a,b,index)
    c = a + b
    if c.digit >= 1000
        return index
    end
    sumup(c,a,index + 1) 
end

def id25()
    sumup(MyBigNumber.new(1),MyBigNumber.new(1),3)
    
    
end

puts id25()
    
    