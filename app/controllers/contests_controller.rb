class ContestsController < ApplicationController
  def index
    @contests = Contest.all
  end

  def show
    @contest = Contest.find(params[:id])
    @movies = @contest.movies
    @vote = Vote.new
  end

  def new
    @contest = Contest.new
  end

  def create
    @contest = Contest.new(params_contest)
    if @contest.save
      redirect_to :action=>"movie",:id=>@contest.id
    else
      redirect_to :action=>"new"
    end
  end

  def add
    @movie = Movie.new(params_movie)
    @contest = Contest.last
    @movie.contest_id = @contest.id
    if @movie.save
      redirect_to :action=>"movie",:id=>@contest.id
    else
      # render :new
      redirect_to :action=>"movie"
    end
  end

  def top
  end

  def movie
    @movie = Movie.new
  end

  def preview


  end

  def url
  end

  private

  def params_contest
    params.require(:contest).permit(:name,:article,:layout,:writer,:scope)
  end
  def params_movie
    params.require(:movie).permit(:contest_id,:url)
  end
end

