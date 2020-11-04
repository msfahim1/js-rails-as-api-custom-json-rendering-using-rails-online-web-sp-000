class BirdsController < ApplicationController
  def index
    birds = Bird.all
      # render json: birds
      # render json: birds, only: [:id, :name, :species]
      render :json => birds, :except => [:created_at, :updated_at]
    end
  end
end
