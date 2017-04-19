require 'rails_helper'

RSpec.describe ScoresController, type: :controller do
  context '#show' do
    it 'should return that the word is valid and the right count' do
      get :show, params: { word: 'Valid' }, format: :json

      parsed_response = JSON.parse(response.body)

      expect(parsed_response['valid']).to eq(true)
      expect(parsed_response['score']).to eq(9)
    end

    context '#errors' do
      it 'should return that the word is invalid when is an inexistent word' do
        get :show, params: { word: 'Gustavo' }, format: :json

        parsed_response = JSON.parse(response.body)

        expect(parsed_response['valid']).to eq(false)
      end

      it 'should return that the word is invalid when numbers' do
        get :show, params: { word: '1234' }, format: :json

        parsed_response = JSON.parse(response.body)

        expect(parsed_response['valid']).to eq(false)
      end
    end
  end
end
