class PigLatinizer

  def piglatinize(str)
    if str.split(' ').length == 1
      piglatinize_word(str)
    else
      piglatinize_sent(str)
    end
  end

  def is_consonant(letter)
    !letter.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    if !is_consonant(word[0])
      word = word + "w"
    elsif is_consonant(word[0]) && is_consonant(word[1]) && is_consonant(word[2])
      word = word.slice(3.. -1) + word.slice(0,3)
    elsif is_consonant(word[0]) && is_consonant(word[1])
      word = word.slice(2.. -1) + word.slice(0,2)
    else
      word = word.slice(1.. -1) + word.slice(0)
    end
    word << "ay"
  end

  def piglatinize_sent(sentence)
    sentence.split.collect {|word| piglatinize_word(word)}.join(" ")
  end

end
