class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text.split(" ")
  end

  def piglatinize
    @text.map do | word |
      first_letter = word[0]
      second_letter = word[1]
      if word[0] == /[aeiou]/
        word + "ay"
      elsif word[0] != /[aeiou]/ && word[1] != /[aeiou]/
        first_letter = word[0]
    end
  end

end
