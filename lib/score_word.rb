class ScoreWord
  def self.score(word)
    word.chars.inject(0) do |sum, letter|
      sum + ScoreLetter.score(letter)
    end
  end
end
