class PigLatinizer

  def piglatinize(string)
    words = string.split(" ")

    words.map! do |word|
      is_vowel?(word[0]) ? handle_vowel(word) : handle_consonant(word)
    end.join(" ")
  end

  private

  def is_vowel?(char)
    char.match(/[aeiouAEIOU]/) != nil ? true : false 
  end

  def handle_vowel(string)
    string + "way"
  end

  def handle_consonant(string)
    cluster_end = 0
    loop do
      cluster_end += 1
      break if is_vowel?(string[cluster_end])
    end

    string[cluster_end..string.length] + string[0..cluster_end-1] + "ay"
  end

end
