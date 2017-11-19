class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text.split(" ")
  end

  def piglatinize
    @text.map do | word |
      first_letter = word[0]
      second_letter = word[1]

      if !first_letter.scan(/[aeiou]/).empty?
        word + "ay"
      elsif first_letter.scan(/[aeiou]/).empty? && second_letter.scan(/[aeiou]/).empty?
        new_ending = first_letter + second_letter + "ay"

        word[2..-1] + new_ending
      else
        word[1..-1] + first_letter + "ay"
      end
    end
  end

end
