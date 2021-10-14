class LetterCounter
    def countbobulator letters
        letter_count = {} 
        
        letters.each_char do |char|
            if letter_count.include? char
                letter_count[char] += 1
            else
                letter_count[char] = 1
            end
        end
        
        sorted = letter_count.sort_by {|key, value| [-value, key]}
        sorted_letters = sorted.map {|x| x.first}
        return sorted_letters.join
    end
end
