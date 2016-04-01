
class VotesController < ApplicationController
  def show
  end

  def create
    if params[:positive] == "yes"
      Vote.create!(link_id: params[:link_id].to_i, positive: 1, negative: 0, user_id: 50)
      redirect_to :back
    elsif params[:positive] == "no"
      Vote.create!(link_id: params[:link_id].to_i, positive: 0, negative: 1, user_id: 50)
      redirect_to :back
    end
  end
end
