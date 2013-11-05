class FrogsController < ApplicationController

  before_action :source_frog, only: [:show, :edit, :update, :destroy]

end
