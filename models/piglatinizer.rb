class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def make_piglatin_array
    text_array = @text.split(" ")

    text_array.map do | word |
      word.downcase
      first_letter = word[0]
      second_letter = word[1]

      punctuation = word.scan(/[^a-zA-Z]/).first

      punctuation ? (word_end = "ay" + punctuation) : (word_end = "ay")
      word.slice!(punctuation) if punctuation

      if !first_letter.scan(/[aeiou]/).empty?
        word + word_end
      elsif first_letter.scan(/[aeiou]/).empty? && second_letter.scan(/[aeiou]/).empty? && word.size > 1
        word[2..-1] + first_letter + second_letter + word_end
      else
        word[1..-1] + first_letter + word_end
      end

    end
  end

  def piglatinize
    make_piglatin_array.join(" ")
  end


end
