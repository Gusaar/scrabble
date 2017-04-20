class Scrabble::Dictionary

  def self.words
    @@words ||= File.readlines(Rails.root.join('words.txt')).map(&:split).flatten
  end

  def self.valid?(word)
    words.include?(word.upcase)
  end
end
