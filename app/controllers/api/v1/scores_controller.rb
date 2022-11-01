class Api::V1::ScoresController < ApplicationController
    def index
      @scores = Score.all
  
      render json: @scores
    end
  
    def show
      @score = Score.where map_id: params[:map_id]
  
      render json: @score
    end
  
    def create
      @score = Score.new(score_params)
  
      if @score.save
        render json: @score, status: :created, location: api_v1_scores_path(@score)
      else
        render json: @score.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def score_params
      params.permit(:name, :time, :map_id)
    end
  end
