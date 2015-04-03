class VotesController < ApplicationController
  def create

    @vote = Vote.new(params_vote)

    if @vote.save
      redirect_to root_url
    else
      raise
      # redirect_to :controller=>"contests",:action=>"show"
    end
  end
  def params_vote
    params.require(:vote).permit(:name,:movie_id)
  end
end
