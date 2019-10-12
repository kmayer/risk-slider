class VotesController < ApplicationController
  def show
    @exercise, @vote = objects
  end

  def update
    @exercise, @vote = objects

    @vote.update(vote_params)

    redirect_to exercise_vote_path(@exercise)
  end

  def vote_params
    params.require(:vote).permit(:defect_free, :great_ux)
  end

  def objects
    exercise = Exercise.find_by!(token: params[:exercise_id])
    vote_token = "vote_token_#{exercise.token}"
    session[vote_token] ||= exercise.votes.create.token
    vote = Vote.find_by!(token: session[vote_token])
    [exercise, vote]
  end
end
