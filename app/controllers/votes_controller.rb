
class VotesController < ApplicationController
  def show
  end

  def create
    #pull the creates out of the if statement, do an if/then where the result is psitive or negative.
    if params[:positive] == "yes"
      Vote.create!(link_id: params[:link_id].to_i, positive: 1, negative: 0, user_id: 50)
      redirect_to :back
    elsif params[:positive] == "no"
      Vote.create!(link_id: params[:link_id].to_i, positive: 0, negative: 1, user_id: 50)
      redirect_to :back
    end
  end
end
