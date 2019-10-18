# == Schema Information
#
# Table name: exercises
#
#  created_at :datetime         not null
#  id         :bigint(8)        not null, primary key
#  metrics    :jsonb
#  token      :string
#  updated_at :datetime         not null
#
# Indexes
#
#  index_exercises_on_token  (token) UNIQUE
#

FactoryBot.define do
  factory :exercise do
    metrics { ["defect_free", "finish_fast", "great_ux", "lots_of_features", "visually_stunning"] }
  end
end
