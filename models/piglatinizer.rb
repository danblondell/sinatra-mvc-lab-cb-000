class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def make_piglatin_array
    text_array = @text.split(" ")

    text_array.map do | word |
      first_letter = word[0]
      second_letter = word[1]

      punctuation = word.scan(/[^a-z]/).first

      punctuation ? word_end = "ay" + punctuation : word_end = "ay"

      if !first_letter.scan(/[aeiou]/).empty?
        word +  word_end
      elsif first_letter.scan(/[aeiou]/).empty? && second_letter.scan(/[aeiou]/).empty?
        word[2..-1] + first_letter + second_letter + "ay" + punctuation
      else
        word[1..-1] + first_letter + "ay" + punctuation
      end

    end
  end

  def piglatinize
    make_piglatin_array.join(" ")
  end


end
