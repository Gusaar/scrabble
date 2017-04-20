require 'rails_helper'

RSpec.describe Scrabble::ScoreLetter do
  context '#score' do
    it 'should return the correct value for an existing letter' do
      expect(Scrabble::ScoreLetter.score('z')).to eq(10)
    end

    it 'should return 0 if the letter does not exist' do
      expect(Scrabble::ScoreLetter.score('1')).to eq(0)
    end
  end
end
