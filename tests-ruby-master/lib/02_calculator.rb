def add(x,y)
    return x.to_f + y.to_f
end

def subtract(x,y)
    return x.to_f - y.to_f
end

def sum(array)
    sum=0
    return array.sum
end

def multiply(x,y)
    return x.to_f * y.to_f
end

def power(x,y)
    return x.to_f ** y.to_f
end

def factorial(n)
    if n == 0
        return 1
    else
        return (1..n).inject(:*)
    end
end
