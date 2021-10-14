require 'autocomplete'

describe Autocomplete do
    context "suggestions" do
        context "gets suggestions after setup" do
            it "gets all suggestions added that start with the letter" do
                ac = Autocomplete.new
                ac.add_word "cat"
                ac.add_word "car"
                ac.add_word "cab"

                expect(ac.suggestions("c")).to eql(["cat", "car", "cab"])
            end
            it "gets all suggestsions when using add_words" do
                ac = Autocomplete.new
                ac.add_words ["cat", "car", "cab"]

                expect(ac.suggestions("c")).to eql(["cat", "car", "cab"])
            end
            it "gets suggestions where the word starts with multiple letters given" do
                ac = Autocomplete.new
                ac.add_word "carburator"
                ac.add_word "carbunkle"
                ac.add_word "cars"

                expect(ac.suggestions("car")).to eql(["carburator", "carbunkle", "cars"])
            end
            it "returns the actual word if it exists, first, then the rest of the suggestions" do
                ac = Autocomplete.new
                ac.add_words ["cats", "catty", "cat"]

                expect(ac.suggestions("cat")).to eql(["cat", "cats", "catty"])
            end
            it "doesn't return non-matching words" do
                ac = Autocomplete.new
                ac.add_words ["cats", "cat", "meow"]

                expect(ac.suggestions("dog")).to eql([])
            end


            it "doesn't return matches from the middle of words" do
                ac = Autocomplete.new
                ac.add_words ["cats", "cat", "meow"]

                expect(ac.suggestions("ow")).to eql([])
            end

            it "doesn't return matches when the suggestion is longer" do
                ac = Autocomplete.new
                ac.add_words ["cats", "cat", "meow"]

                expect(ac.suggestions("meowser")).to eql([])
            end
        end
    end
end
