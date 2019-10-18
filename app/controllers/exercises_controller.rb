class ExercisesController < ApplicationController
  # TODO: use the token as the user_id in the cookie. only the user-id with the exercise token can
  # see/edit/manage the exercise
  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(params[:exercise])
    # Just fill something in for now.
    @exercise.metrics = ["defect_free", "finish_fast", "great_ux", "lots_of_features", "visually_stunning"]
    @exercise.save!
    redirect_to @exercise
  end

  def show
    @exercise = Exercise.find_by!(token: params[:id])
    @votes = @exercise.votes
  end
end
