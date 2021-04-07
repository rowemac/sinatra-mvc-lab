class PigLatinizer
    attr_accessor :phrase
    def piglatinize(words)
        array = []
        if words.include?(" ")
            words = words.split(" ")
            words.each do |word|
                letter = word[0]
                if letter.scan(/[aeiouAEIOU]/).count > 0
                    array << word + "way"
                elsif word[0..2].scan(/[aeiou]/).count == 0
                    array << word[3..-1] + word[0..2] + "ay"
                elsif word[0..1].scan(/[aeiou]/).count == 0
                    array << word[2..-1] + word[0..1] + "ay"
                else
                    array << word[1..-1] + word[0] + "ay"
                end   
            end
            array.join(" ")
        else
            letter = words[0]
            if letter.scan(/[aeiouAEIOU]/).count > 0
                words + "way"
            elsif words[0..2].scan(/[aeiou]/).count == 0
                words[3..-1] + words[0..2] + "ay"
            elsif words[0..1].scan(/[aeiou]/).count == 0
                words[2..-1] + words[0..1] + "ay"
            else
                words[1..-1] + words[0] + "ay"
            end  
        end
    end
end