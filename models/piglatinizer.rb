class PigLatinizer

  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def pig_latinizer
    word_array = text.split(" ")
    word_array.map do |word|
      if word[0].scan(/[aeiou]/).count == 1
        word + "way"
      elsif word[(0..1)].scan(/[bcdfghjklmnpqrstvwxyz]/).count == 2
        word[(2..-1)] + word[(0..1)] + "ay"
      else
        word[(1..-1)] + word[0] + "ay"
      end
    end.join(" ")
  end



end
