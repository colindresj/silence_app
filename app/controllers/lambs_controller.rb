class LambsController < ApplicationController
  def index
    @lambs = Lamb.all
    respond_to do |format|
      format.html
      format.json { render :json => @lambs }
    end
  end

  def create
    @lamb = Lamb.new params[:lamb]
    if @lamb.save
      render :json => @lamb
    end
  end

  def update
    @lamb = Lamb.find params[:id]
    render :json => @lamb
  end
end
