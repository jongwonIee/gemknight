class JewelsController < ApplicationController
  def index
  end

  def show
    @jewel = Jewel.find(1)
  end

  def new_game
    Jewel.init
    Jewel.deal(1)
    redirect_to :show
  end


end
