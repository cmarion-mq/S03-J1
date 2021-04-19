def who_is_bigger(a,b,c)
    if(a==nil || b==nil || c==nil)
        return "nil detected"
    else
        array = [a, b, c]
        if array.index(array.max) == 0
            return "a is bigger"
        elsif array.index(array.max) == 1
            return "b is bigger"
        else       
            return "c is bigger"
        end
    end
end

def reverse_upcase_noLTA(phrase)
    return phrase.upcase.delete("LTA").reverse
end

def array_42(array)
    return array.include?(42)
end

def magic_array(array)
    return array.flatten.sort.map{|e| e * 2}.compact.delete_if {|x| x%3==0}.uniq.sort
end
