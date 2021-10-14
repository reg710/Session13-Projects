# Take in a string
# Then reorder the string by how many times a letter appears in the string

# "Hello"
# "leho"

# "Hello World"
# "lodehrw"

require 'reorder'

describe LetterCounter do
    context "countbobulator" do
        it "when given hello returns leho" do
            lc = LetterCounter.new
            expect(lc.countbobulator("hello")).to eql("leho")
        end

        it "when given Hello World returns lodehrw" do
            lc = LetterCounter.new
            expect(lc.countbobulator("Hello World")).to eql("lodehrw")
        end

        it "when given a returns a" do
            lc = LetterCounter.new
            expect(lc.countbobulator("a")).to eql("a")
        end

        it "when given abbcccdddd returns dcba" do
            lc = LetterCounter.new
            expect(lc.countbobulator("abbcccdddd")).to eql("dcba")
        end
        
        it "when given aaaabbbccd returns abcd" do
            lc = LetterCounter.new
            expect(lc.countbobulator("aaaabbbccd")).to eql("abcd")
        end
    end
end
