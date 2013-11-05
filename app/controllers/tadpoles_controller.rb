class TadpolesController < ApplicationController

  def index
    @tadpoles = Tadpole.all
  end

  def create
    Tadpole.create(params)
    redirect_to('/tadpoles')
  end

  def edit
    @tadpole = Tadpole.find(params[:id])
  end

  def show
    @tadpole = Tadpole.find(params[:id])
  end

  def update
    @tadpole = Tadpole.find(params[:id])
    @tadpole.update(request.params)
    redirect_to('/tadpoles')
  end

  def destroy
    @tadpole = Tadpole.find(params[:id])
    @tadpole.destroy
    redirect_to('/tadpoles')
  end

  def evolve
    @tadpole = Tadpole.find(params[:id])
    @frog = Frog.new(name: @tadpole.name, color: @tadpole.color)
    @frog.pond_id = Frog.find_by(:id => @tadpole.frog_id).pond_id
    @frog.save
    @tadpole.destroy
    redirect_to('/tadpoles')
  end

end
