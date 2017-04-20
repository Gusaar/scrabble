require 'rails_helper'

RSpec.describe Scrabble::Dictionary do
  context '#words' do
    before(:each) do
      allow(File).to receive(:readlines).with(Rails.root.join('words.txt')).and_return(['a', 'b', 'c'])
    end

    it 'should read the file and return an array' do
      expect(Scrabble::Dictionary.words.size).to eq(3)
      expect(Scrabble::Dictionary.words.first).to eq('a')
    end
  end
end
