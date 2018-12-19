class RankingsController < ApplicationController
  def index
    @rankings = Ranking.all.order(updated_at: :desc)
  end

  def show
    @ranking = Ranking.find(params[:id])
  end

  def new; end

  def create
    ranking = current_player.rankings.new(params.require(:ranking).permit(:name, :started_at, :ended_at))
    if ranking.save
      redirect_to mypage_path
    else
      pp ranking.errors
    end
  end
end
