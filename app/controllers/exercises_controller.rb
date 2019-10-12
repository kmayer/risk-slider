class ExercisesController < ApplicationController
  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(params[:exercise])
    @exercise.save!
    render @exercise, location: @exercise
  end

  def show
    @exercise = Exercise.find_by(token: params[:id])
  end
end
