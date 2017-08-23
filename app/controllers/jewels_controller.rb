class JewelsController < ApplicationController
  def index
  end

  def show
    @jewel = Jewel.find(1)
  end

  def new_game
    Jewel.init
    Jewel.deal(1)
    redirect_to jewel_path(1)
  end


end
