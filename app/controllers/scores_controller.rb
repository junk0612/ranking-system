class ScoresController < ApplicationController
  def new
    @ranking = Ranking.find(params[:ranking_id])
  end

  def create
    ranking = current_player.participated_rankings.find(params[:ranking_id])
    participation = ranking.ranking_participations.find_by(player: current_player)
    target_chart = ranking.target_charts.find_by(chart_id: params[:chart])

    score = Score.new(ranking_participation: participation, target_chart: target_chart)

    redirect_to ranking_path(ranking) if score.save
  end
end
