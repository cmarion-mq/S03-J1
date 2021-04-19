def echo(word)
    return word
end

def shout(word)
    return word.upcase
end

def repeat(word,*x)
    x=x[0].to_i
    r = " " + word
    if x == 0
        return word + r
    else
        i = x-1
        return word + r * i
    end
end

def start_of_word(string, x)
    string[0, x.to_i]
end

def first_word(string)
    string.split[0]
end

def titleize(string)
    string.split.map.with_index{|e, i|
    if e == "and"
        e
    elsif e == "the" && i > 0
        e   
    else
        e.capitalize
    end   
    }.join(" ")
end



