class Autocomplete
    def suggestions partial_word
        output = []
        @dictionary.each do |word|
            if word == partial_word
                output.unshift word
            elsif word.chars.take(partial_word.length) == partial_word.chars
                output << word
            end
        end
        return output
    end

    def add_word word
        @dictionary << word
    end

    def add_words words
        @dictionary << words
        @dictionary = @dictionary.flatten
    end

    def initialize
        @dictionary = []
    end
end
