# == Schema Information
#
# Table name: votes
#
#  created_at   :datetime         not null
#  exercise_id  :bigint(8)        not null
#  id           :bigint(8)        not null, primary key
#  metric_votes :jsonb
#  token        :string
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_votes_on_exercise_id  (exercise_id)
#  index_votes_on_token        (token) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (exercise_id => exercises.id)
#

class Vote < ApplicationRecord
  has_secure_token

  belongs_to :exercise

  def props
    metrics = exercise.metrics
    self.metric_votes ||= Hash[metrics.zip(Array.new(metrics.length) { 0 })]
  end

  def to_param
    token
  end
end
