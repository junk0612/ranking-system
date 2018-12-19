class RankingParticipationsController < ApplicationController
  def create
    RankingParticipation.create(player: current_player, ranking_id: params[:ranking_id])
    redirect_to ranking_path(params[:ranking_id])
  end
end
