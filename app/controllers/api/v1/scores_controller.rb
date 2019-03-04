class Api::V1::ScoresController < ApplicationController

  def index
    @score = Score.all
    render json: @score
  end

  def update
    @score.update(score_params)
  end

  private

  def score_params
    params.require(:score).permit(:hands_played, :hands_won, :hands_lost, :hands_drawn)
  end
end
