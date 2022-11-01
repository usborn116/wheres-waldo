class Api::V1::MapsController < ApplicationController
    def index
      @maps = Map.all
  
      render json: @maps,
             include: { scores: { only: [:name, :time] } },
             except: [:created_at, :updated_at]
    end
  
    def show
      @map = Map.find_by slug: params[:slug]
  
      render json: @map,
             include: { characters: { only: [:slug, :x_coord, :y_coord] },
                        scores: { only: [:name, :time] } },
             except: [:created_at, :updated_at]
    end
  
    def create
      @map = Map.new(map_params)
  
      if @map.save
        render json: @map, status: :created, location: @map
      else
        render json: @map.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def map_params
      params.require(:map).permit(:slug, :name, :difficulty)
    end
  end
