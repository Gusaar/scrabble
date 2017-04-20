class Scrabble::ScoreWord

  def initialize(word)
    @word = word
  end

  def score
    @word.chars.inject(0) do |sum, letter|
      sum + Scrabble::ScoreLetter.score(letter)
    end
  end

  def valid?
    Scrabble::Dictionary.valid?(@word)
  end
end
