class LinksController < ApplicationController
  def index
    @links = Link.select("links.*, SUM(votes.positive - votes.negative) as aggregate_votes")
                 .joins(:votes)
                 .group("links.id")
                 .order("aggregate_votes DESC")
                 .page(params[:page])
  end

  def show
    @link = Link.find(params[:id])
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.create(title: params[:link][:title], body: params[:link][:body], user_id: params[:link][:user_id])
    redirect_to link_path(@link.id)
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
    if @link.update(link_params)
      redirect_to @link
    else
      render 'edit'
    end
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    redirect_to :back
  end

  private
    def link_params
      params.require(:link).permit(:title)
    end
end
