class PigLatinizer
  def piglatinize(string)
    words = string.split(" ")

    words.map! do |word|
      is_vowel?(word[0]) ? handle_vowel(word) : handle_consonant(word)
    end.join(" ")
  end

  private

  def is_vowel?(char)
    char.scan(/[aeiouAEIOU]/).length == 1
  end

  def handle_vowel(string)
    string + "way"
  end

  def handle_consonant(string)
    head_end = 0
    loop do
      head_end += 1
      break if is_vowel?(string[head_end])
    end

    string[head_end..string.length] + string[0..head_end-1] + "ay"
  end
end