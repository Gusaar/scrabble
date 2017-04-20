require 'rails_helper'

RSpec.describe Scrabble::ScoreWord do
  context '#score' do
    it 'should return the correct value for an existing word' do
      score_word = Scrabble::ScoreWord.new('Valid')
      expect(score_word.score).to eq(9)
    end

    it 'should return 0 if the word does not contain letters' do
      score_word = Scrabble::ScoreWord.new('1234')
      expect(score_word.score).to eq(0)
    end
  end

  context '#valid?' do
    it 'should return that is valid' do
      score_word = Scrabble::ScoreWord.new('Valid')
      expect(score_word.valid?).to be true
    end

    it 'should return that is not valid' do
      score_word = Scrabble::ScoreWord.new('1234')
      expect(score_word.valid?).to be false
    end
  end
end
