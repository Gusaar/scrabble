class ScoresController < ApplicationController

  def show
    score_word = Scrabble::ScoreWord.new(params[:word])

    respond_to do |format|
      format.json { render json: { word: params[:word], valid: score_word.valid?, score: score_word.score }}
    end
  end
end
