class PigLatinizer


  def piglatinize(text)
    text_arr = text.split(" ")
    changed_arr = []
    text_arr.map do |word|
      len = word.downcase.count("a-z")
      first_letter = word[0].downcase
      if first_letter == "a" || first_letter =="e" || first_letter == "i" || first_letter == "o" || first_letter=="u"
        changed_arr << word + "way"
      else
        first_half = word.split(/([aeiou].*)/)[0]
        second_half = word.split(/([aeiou].*)/)[1]
        if first_half.downcase.count("a-z") > 2
          changed_arr << "ay" + word
        else
          final_word = second_half + first_half + "ay"
          changed_arr << final_word
        end
      end
    end
    changed_arr.join(" ")
  end

end
