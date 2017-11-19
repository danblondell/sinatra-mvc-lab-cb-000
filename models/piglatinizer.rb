class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text.split(" ")
  end

  def

  def make_piglatin_array
    @text.map do | word |
      first_letter = word[0]
      second_letter = word[1]
      punctuation = word.scan(/[^a-z]/)

      punctuation.empty? ? punctuation = "" : word.split!(punctuation)



      if !first_letter.scan(/[aeiou]/).empty?
        word + "ay" + punctuation
      elsif first_letter.scan(/[aeiou]/).empty? && second_letter.scan(/[aeiou]/).empty?
        word[2..-1] + first_letter + second_letter + "ay" + punctuation
      else
        word[1..-1] + first_letter + "ay" + punctuation
      end
    end
  end

  def piglatinize
    self.make_piglatin_array.join(" ")
  end


end
