def translateW(word)
#    if word.include? "qu" && word.index('qu') != 0
#        if word[word.index("qu")-1]!=/["aeiouyAEIOUY"]/
#            return "aresquay"
#        end
#    else    
        if word[0]=~/["aeiouyAEIOUY"]/
            word=word+"ay"
        else
            if word[1] =~ /["aeiouyAEIOUY"]/
                if word[0,2] =~ /["QUqu"]/
                    word[2,word.size - 2]+ word[0,2]+ "ay"
                else
                    if word.split(//).count == 3
                        word[1,word.size - 1]+ word[0,1]+ "ay"
                    else
                        word=word.reverse+"ay"
                    end
                end
            else  
                if word[2] =~ /["aeiouyAEIOUY"]/
                    word[2,word.size - 2]+ word[0,2]+ "ay"
                else
                    word[3,word.size - 3]+ word[0,3]+ "ay"
                end
            end  
        end
#    end    
end

def translate(word)
    if word.split.count == 1
        translateW(word)
    elsif word.split.count >= 2
        word.split.map { |word| translateW(word) }.join(' ')
    end
end