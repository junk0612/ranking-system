module RankingsHelper
  def perticipated?(ranking, player)
    ranking.participants.include?(player)
  end
end
