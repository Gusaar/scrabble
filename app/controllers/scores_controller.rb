class ScoresController < ApplicationController

  def show
    respond_to do |format|
      format.json { render json: { word: params[:word], valid: VALID_WORDS.include?(params[:word].upcase), score: ScoreWord.score(params[:word]) }}
    end
  end
end
