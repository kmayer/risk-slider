class VotesController < ApplicationController
  def show
    @exercise, @vote = objects
    @props = { votes: @vote.props }
  end

  def update
    @exercise, @vote = objects
    @exercise.metrics.each do |metric|
      @vote.props[metric] = params[metric].to_i if params[metric].present?
    end
    @vote.save!
    redirect_to exercise_vote_url(@exercise)
  end

  private

  def objects
    exercise = Exercise.find_by!(token: params[:exercise_id])
    vote_token = "vote_token_#{exercise.token}"

    begin
      session[vote_token] ||= exercise.votes.create.token
      vote = Vote.find_by(token: session[vote_token])

      if vote.nil? # The vote has been deleted... just make a new one.
        session.delete(vote_token)
        vote = exercise.votes.create
        session[vote_token] = vote.token
      end
    end
    [exercise, vote]
  end
end
