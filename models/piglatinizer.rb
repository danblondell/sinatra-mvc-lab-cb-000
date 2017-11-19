class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text.split(" ")
  end

  def piglatinize
    @text.map do | word |
      first_letter = word[0]
      second_letter = word[1]

      if first_letter == /[aeiou]/
        word + "ay"
      elsif first_letter != /[aeiou]/ && second_letter != /[aeiou]/
        new_ending = first_letter + second_letter + "ay"
        word.slice!(0..1)

        word + new_ending
      else
        word.slice!(0) + first_letter + "ay"
    end
  end

end
