require 'rails_helper'

RSpec.describe ScoreWord do
  context '#score' do
    it 'should return the correct value for an existing word' do
      expect(ScoreWord.score('Valid')).to eq(9)
    end

    it 'should return 0 if the word does not contain letters' do
      expect(ScoreWord.score('1234')).to eq(0)
    end
  end
end
