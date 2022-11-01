class Api::V1::CharactersController < ApplicationController
    def index
      @characters = Character.all
  
      render json: @characters
    end
  
    def show
      @character = Character.find(params[:id])
  
      render json: @character
    end
  
    # POST /characters
    def create
      @character = Character.new(character_params)
  
      if @character.save
        render json: @character, status: :created, location: @character
      else
        render json: @character.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def character_params
      params.require(:character).permit(:slug, :x_coord, :y_coord, :map_id)
    end
  end
