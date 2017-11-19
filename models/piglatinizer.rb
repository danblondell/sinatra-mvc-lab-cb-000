class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text.split(" ")
  end

  def piglatinize
    @text.map do | word |
      if word.first == /[aeiou]/
        word + "ay"
      elsif word.first == /[]/

    end
  end

end
