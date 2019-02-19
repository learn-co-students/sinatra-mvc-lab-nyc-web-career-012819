class PigLatinizer
# binding.pry
  def piglatinize(text)
    word_array = text.split(' ')

    word_array.map do |word|
      vowel?(word[0]) ? first_char_vowel(word) : first_char_consonant(word)
      #if first letter is vowel, + 'way'
      #if first letter is not vowel, shift and push the letter until next letter is vowel, then + 'ay'
    end.join(' ')
  end
  # https://web.ics.purdue.edu/~morelanj/RAO/prepare2.html

  def vowel?(char)
    # char.scan(/[aeiouAEIOU]/).count == 1
    char.match(/[aeiouAEIOU]/)
  end

  def first_char_vowel(word)
    word += 'way'
  end

  def first_char_consonant(word)
    string = ''
    saved = ''
    i = 0
    while i < word.length
      if !vowel?(word[i])
        saved += word[i]
      else
        string += word[i..-1]
        break
      end
      i += 1
    end
    string += saved + "ay"
  end

end
