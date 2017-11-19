class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text.split(" ")
  end

  def piglatinize
    @text.map do | word |
      if word[0] == /[aeiou]/
        word + "ay"
      elsif word[0] == /[^aeiou]/ && word[1] == /[^aeiou]/
        word
    end
  end

end
