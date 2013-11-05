class PondsController < ApplicationController

  def index
    @ponds = Pond.all
  end

  def create
    pond = Pond.create(params)
    if pond.save
      redirect_to('/ponds')
    else
      "ERROR: no pond was made."
    end
  end

  def new
    @pond = Pond.new
  end

  def edit
    @pond = Pond.find(params[:id])
  end

  def show
    @pond = Pond.find_by(:id => params[:id])
  end

  def update
    @pond = Pond.find(params[:id])
    @pond.update(:name => params[:name], :water_type => params[:water_type]) 
    @pond.save
    redirect_to('/ponds')       
  end

  def destroy
    @pond = Pond.find(params[:id])
    @pond.destroy
    redirect_to('/ponds')   
  end

end
