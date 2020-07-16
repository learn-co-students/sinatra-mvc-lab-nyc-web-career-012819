class PigLatinizer

  attr_reader :text

  def initialize
    @text = text
  end

  def piglatinize(text)
    vowels = ['a', 'e', 'i', 'o', 'u']
    text.split(" ").map do |word|
      if word.length == 1
        word + "way"
      elsif vowels.include?(word[0].downcase)
        word + "way"
      elsif vowels.include?(word[1])
        word = word[1..-1] + (word[0] + "ay")
      elsif vowels.include?(word[2])
        word = word[2..-1] + (word[0..1] + "ay")
      else
        word = word[3..-1] + (word[0..2] + "ay")
      end
    end.join(" ")
  end





end
