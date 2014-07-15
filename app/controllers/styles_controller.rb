class StylesController < ApplicationController

  def index
    @styles = Style.all
  end

  def show
    @styles = Style.find(params[:id])
  end
end
