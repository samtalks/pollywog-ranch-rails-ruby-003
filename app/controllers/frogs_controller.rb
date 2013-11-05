class FrogsController < ApplicationController

  # before_action :source_frog, only: [:show, :edit, :update, :destroy]

  def index
    @frogs = Frog.all
  end

  def create
    Frog.create(params)
    redirect_to('/frogs')
  end

  def new
   @ponds = Pond.all
  end

  def show
    @frog = Frog.find(params[:id])
  end


  def edit
    @frog = Frog.find(params[:id])
    @ponds = Pond.all
  end

  def update
    @frog = Frog.find(params[:id])
    @frog.update(request.params)
    @frog.save
    redirect_to('/frogs')
  end

  def destroy
    @frog = Frog.find(params[:id])
    @frog.destroy
    redirect_to('/frogs')
  end

  def create_tadpole
  # get '/frogs/:id/tadpoles/new'
    @frog = Frog.find(params[:id])
    @ponds = Pond.all

    # erb :'tadpoles/new'
  end



end
