class PigLatinizer

  def piglatinize(user_phrase)
    @new_word = user_phrase.split("")
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    if vowels.include?(@new_word[0])
      latinized_word = begins_with_vowel.join("")
    else
      latinized_word = begins_with_consonant.join("")
    end
    latinized_word
  end

  def to_pig_latin(sentence)
    words_in_sentence = sentence.split(" ")

    pig_latinized_words = words_in_sentence.collect do |word|
      self.piglatinize(word)
    end

    new_sentence = pig_latinized_words.join(" ")
  end

  def begins_with_vowel
    vowel_word = @new_word << "way"
  end

end