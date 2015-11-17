class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def new
    @link = Link.new
    @links = Link.all
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to link_url
    else
      render action: "new"
    end
  end

  def show
    @link = Link.find(params[:id]) || not_found
  end

  def visit_remote
    @link = Link.find(params[:id])
    if @link.clicks == 0
      @link.visited!
      redirect_to @link.given_url
    else
      not_found
    end
  end

  private

  def link_params
    params.require(:link).permit(:given_url)
  end

end
