# == Schema Information
#
# Table name: votes
#
#  created_at        :datetime         not null
#  defect_free       :integer
#  exercise_id       :bigint(8)
#  finish_fast       :integer
#  great_ux          :integer
#  id                :bigint(8)        not null, primary key
#  lots_of_features  :integer
#  token             :string
#  updated_at        :datetime         not null
#  visually_stunning :integer
#
# Indexes
#
#  index_votes_on_exercise_id  (exercise_id)
#  index_votes_on_token        (token) UNIQUE
#

FactoryBot.define do
  factory :vote do
  end
end
