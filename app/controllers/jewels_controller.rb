class JewelsController < ApplicationController
  def index

  end

  def new_game
    Jewel.init
    Jewel.deal
  end
end
