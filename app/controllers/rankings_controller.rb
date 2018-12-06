class RankingsController < ApplicationController
  def show
    @ranking = Ranking.find(params[:id])
  end

  def new; end

  def create
    ranking = current_player.rankings.new(params.require(:ranking).permit(:name, :started_at, :ended_at))
    if ranking.save
      redirect_to ranking_path(ranking)
    else
      pp ranking.errors
    end
  end
end
