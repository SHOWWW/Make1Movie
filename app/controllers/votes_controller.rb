class VotesController < ApplicationController
  def create
    @vote = Vote.new(params_vote)
  end
end
