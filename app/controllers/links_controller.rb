class LinksController < ApplicationController
  def index
    @links = Link.page(params[:page])
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
end
