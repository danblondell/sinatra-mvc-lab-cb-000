class PigLatinizer

  def piglatinize(word)
    first_letter = word[0] # would downcase here but text reqires not downcasing
    second_letter = word[1]
    third_letter = word[2]

    # searches for punctuation and adds it to the ending if it exists
    punctuation = word.scan(/[^a-zA-Z]/).first
    punctuation ? (word_end = "ay" + punctuation) : (word_end = "ay")
    word.slice!(punctuation) if punctuation

    # applies rules of pig latin to word
    if !first_letter.scan(/[aeiouAEIOU]/).empty?
      word + "w" + word_end
    elsif word.size >= 3 && first_letter.scan(/[aeiouAEIOU]/).empty? && second_letter.scan(/[aeiou]/).empty? && third_letter.scan(/[aeiou]/).empty?
      word[3..-1] + first_letter + second_letter + third_letter + word_end
    elsif word.size >= 2 && first_letter.scan(/[aeiouAEIOU]/).empty? && second_letter.scan(/[aeiou]/).empty?
      word[2..-1] + first_letter + second_letter + word_end
    else
      word[1..-1] + first_letter + word_end
    end
  end

  def to_pig_latin(phrase)
    phrase.split(" ").map {| word | piglatinize(word)}.join(" ")
  end
end
