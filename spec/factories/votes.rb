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

FactoryBot.define do
  factory :vote do
    exercise { nil }
    token { "MyString" }
    visually_stunning { 1 }
  end
end
